syms x y 
N11 = 1/4 * (1-x)*(1-y);
N12 = 1/4 * (1-y)*(1+x);
N13 = 1/4 * (1+y)*(1+x/a) - 1/4 *(1+y/a)*(1-x/a)*(1+x/a);
N14 = 1/4 * (1+y/a)*(1-x/a) - 1/4 *(1+y/a)*(1-x/a)*(1+x/a); 
N15 = 1/2 * 1/4 *(1+y/a)*(1-x/a)*(1+x/a);
figure;
fsurf(N11, [-1 1 -1 1]);
title("Problem 1 N1")
figure
fsurf(N12, [-1 1 -1 1]);
title("Problem 1 N2")
figure
fsurf(N13, [-1 1 -1 1]);
title("Problem 1 N3")
figure
fsurf(N14, [-1 1 -1 1]);
title("Problem 1 N4")
figure
fsurf(N15, [-1 1 -1 1]);
title("Problem 1 N5")

N25= (1-x^2)*(1-y^2);
N21 = 1/4 * (1-x)*(1-y) - N25/4;
N22 = 1/4 * (1+x)*(1-y) - N25/4;
N23 = 1/4 * (1+x)*(1+y) - N25/4;
N24 = 1/4 * (1-x)*(1+y) - N25/4;

figure;
fsurf(N21, [-1 1 -1 1]);
title("Problem 2 N1")
figure
fsurf(N22, [-1 1 -1 1]);
title("Problem 2 N2")
figure
fsurf(N23, [-1 1 -1 1]);
title("Problem 2 N3")
figure
fsurf(N24, [-1 1 -1 1]);
title("Problem 2 N4")
figure
fsurf(N25, [-1 1 -1 1]);
title("Problem 2 N5")
