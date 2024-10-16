syms l E A a F s
A = 10; %mm^2
E = 200000; %N/mm^2
l = 300 % mm
a = 0.1 % N/mm/mm
F = 2000 %N
N1 = (l-s)/l;
N2 = s/l;
N = [N1 N2]
u = [u1, u2, u3, u4];
% Find B
B = diff(N, s)
%Find K
prod = B.'*B;
simple = simplify(prod);
integralB = int(simple, s)
K = (A*E/l)*[1, -1, 0, 0;
   -1, 2, -1, 0;
   0, -1, 2, -1;
   0, 0, -1, 1];

%Find Q
Q_d = ((a*l.^2)/54)*[1, 5, 11, 10];
Q_c = F*[0, 1/2, 1/2, 1];
Q_t = Q_c + Q_d;
Q_d_new = ((a*l.^2)/54)*[5, 11, 10];
Q_c_new = F*[1/2, 1/2, 1];
Q_t_new = Q_d_new + Q_c_new

%Solve
K_new = [K(2, 2), K(2, 3), K(2,4);
        K(3,2), K(3,3), K(3,4);
        K(4,2), K(4, 3), K(4,4)]
u = inv(K_new)*Q_t_new.'
sigma1 = E*B*[0; u(1)]
sigma2 = E*B*[u(1); u(2)]
sigma3 = E*B*[u(2); u(3)]

stress1 = simplify(sigma1)
st
