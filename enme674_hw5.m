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