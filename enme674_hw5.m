syms l s E A
N1 = ((l-2*s)*(l-s))/l^2;
N2 = (4*(l-s)*s)/l^2;
N3 = (-(l-2*s)*s)/l^2;
N = [N1 N2 N3];
B = diff(N, s)
prod = B.'*B;
simple = simplify(prod);
integral = int(simple, s)
K = E*A*int(simple, s, 0, l)