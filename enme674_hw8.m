syms xi eta
x = [0 5 0 6.5];
y = [0 0 7 5];
N = [(1-xi)*(1-eta)/4 (1+xi)*(1-eta)/4 (1+xi)*(1+eta)/4 (1-xi)*(1+eta)/4];
X = sum(N.*x);
Y = sum(N.*y);
dNdEta = [diff(N(1), eta) diff(N(2), eta) diff(N(3), eta) diff(N(4), eta)];
dNdXi = [diff(N(1), xi) diff(N(2), xi) diff(N(3), xi) diff(N(4), xi)];
% J is actually J inverse
J =  [diff(Y, eta) -diff(X, eta) -diff(Y, xi) diff(X, xi)];
B = [dNdXi(1)*J(1)+dNdEta(1)*J(2), 0, dNdXi(2)*J(1)+dNdEta(2)*J(2), 0, dNdXi(3)*J(1)+dNdEta(3)*J(2), 0, dNdXi(4)*J(1)+dNdEta(4)*J(2), 0;
     0, dNdXi(1)*J(3)+dNdEta(1)*J(4), 0, dNdXi(2)*J(3)+dNdEta(2)*J(4), 0, dNdXi(3)*J(3)+dNdEta(3)*J(4), 0, dNdXi(4)*J(3)+dNdEta(4)*J(4);
     dNdXi(1)*J(1)+dNdEta(1)*J(2) dNdXi(1)*J(3)+dNdEta(1)*J(4) dNdXi(2)*J(1)+dNdEta(2)*J(2) dNdXi(2)*J(3)+dNdEta(2)*J(4) dNdXi(3)*J(1)+dNdEta(3)*J(2) dNdXi(3)*J(3)+dNdEta(3)*J(4) dNdXi(4)*J(1)+dNdEta(4)*J(2) dNdXi(4)*J(3)+dNdEta(4)*J(4)];
%assume plane stress problem, using Nickel steel (Young's Modulus 200 GPa,
%poisson's ratio 0.291)
E = 200;
v = 0.291;
C = (E/(1-v^2))*[1 v 0;
                 v 1 0
                 0 0 1-v];
F = @(xi, eta) B.'*C*B;
xi = [-1/sqrt(3) 1/sqrt(3)];
eta = [-1/sqrt(3) 1/sqrt(3)];
F1 = vpa(subs(F, -1/sqrt(3), -1/sqrt(3)), 2)
F2 = vpa(subs(F, xi(1), eta(2)),2);
F3 = vpa(subs(F, xi(2), eta(1)),2);
F4 = vpa(subs(F, xi(2), eta(2)),2);
gauss_quad = F1 + F2 + F3 + F4;
gauss_quad = vpa(gauss_quad, 2)