syms l s E A a F
% Part A
N1 = ((l-2*s)*(l-s))/l^2;
N2 = (4*(l-s)*s)/l^2;
N3 = (-(l-2*s)*s)/l^2;
N = [N1 N2 N3];
B = diff(N, s)
%Part B
prod = B.'*B;
simple = simplify(prod);
integralB = int(simple, s)
K = E*A*int(simple, s, 0, l)
%Part C
Nas = N*a*s;
integralC = int(Nas, s);
integralC = simplify(integralC)
Q_d = int(Nas, s, 0, l)
%Part D
s = l;
NL = subs(N)
s = l/2;
NL2 = subs(N)
Q_c = F*(NL + NL2)
%Part E
K_new = ((A*E)/(3*l))*[0, 0, 0;
                    0, 16, -8;
                    0, -8, 7];
Q_t = Q_c + Q_d
u = Q_t/K_new
%Part F
Q_T_new = [7 -8 1]*u.';
constraint_force = simplify(Q_T_new)
%Part G
e = B*u.';
strain = simplify(e)
sigma = E*e;
stress = simplify(sigma)