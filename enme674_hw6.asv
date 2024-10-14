syms l s E A a F u1 u2 u3 u4
N1 = 1 - s/l;
N2 = s/l;
N = [N1 N2];
u = [u1, u2, u3, u4];
% Find B
B = diff(N, s)
%Find K
prod = B.'*B;
simple = simplify(prod);
integralB = int(simple, s)
K1 = E*A*int(simple, s, 0, l/3)
K2 = E*A*int(simple, s, l/3, 2*l/3)
K3 = E*A*int(simple, s, 2*l/3, l)
K = K1 + K2 + K3
K1 = [K(1, 1), K(1, 2), 0, 0;
   K(2, 1), K(2, 2), 0, 0;
   0, 0, 0, 0;
   0, 0, 0, 0;];
%Find Q
Nas = N*a*s;
integralC = int(Nas, s)
Q_d = int(Nas, s, 0, l/2)
Q_d_1 = int(Nas, s, 0, l/3)
Q_d_2 = int(Nas, s, 1/3, 2*l/3)
Q_d_3 = int(Nas, s, 2*l/3, l)
s = l;
NL = subs(N)
s = l/3;
NL3 = subs(N)
s = 2/3;
N2L3 = subs(N)
Q_c_1 = 0
Q_c_2 = (F/2)*(NL3) + (F/2)*(N2L3)
Q_c_3 = (F/2)*(N2L3) + F*NL
Q_t_1 = Q_c_1 + Q_d_1
Q_t_2 = Q_c_2 + Q_d_2
Q_t_3 = Q_c_3 + Q_d_3
%Part E
K_new = [0, 0; 0, 1].*K;
u = Q_t/K_new
%Part F
%multiply by previously removed column
Q_T_new = [7 -8 1]*u.';
constraint_force = simplify(Q_T_new)
%Part G
e = B*u.';
strain = simplify(e)
sigma = E*e;
stress = simplify(sigma)