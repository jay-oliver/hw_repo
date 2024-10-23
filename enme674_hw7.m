syms x y 
N11 = 1/4 * (1-x)*(1-y);
N12 = 1/4 * (1-y)*(1+x);
N13 = 1/4 * (1+y)*(1+x) - 1/4 *(1+y)*(1-x)*(1+x);
N14 = 1/4 * (1+y)*(1-x) - 1/4 *(1+y)*(1-x)*(1+x); 
N15 = 1/2 * 1/4 *(1+y)*(1-x)*(1+x);
figure;
fig = fsurf(N11, [-1 1 -1 1]);
title("Problem 1 N1")
saveas(fig,'hw 7 figs/N11.png')
figure
fig = fsurf(N12, [-1 1 -1 1]);
title("Problem 1 N2")
saveas(fig,'hw 7 figs/N12.png')
figure
fig = fsurf(N13, [-1 1 -1 1]);
title("Problem 1 N3")
saveas(fig,'hw 7 figs/N13.png')
figure
fig = fsurf(N14, [-1 1 -1 1]);
title("Problem 1 N4")
saveas(fig,'hw 7 figs/N14.png')
figure
fig = fsurf(N15, [-1 1 -1 1]);
title("Problem 1 N5")
saveas(fig,'hw 7 figs/N15.png')

N25= (1-x^2)*(1-y^2);
N21 = 1/4 * (1-x)*(1-y) - N25/4;
N22 = 1/4 * (1+x)*(1-y) - N25/4;
N23 = 1/4 * (1+x)*(1+y) - N25/4;
N24 = 1/4 * (1-x)*(1+y) - N25/4;

figure;
fig = fsurf(N21, [-1 1 -1 1]);
title("Problem 2 N1")
saveas(fig,'hw 7 figs/N21.png')
figure
fig = fsurf(N22, [-1 1 -1 1]);
title("Problem 2 N2")
saveas(fig,'hw 7 figs/N22.png')
figure
fig = fsurf(N23, [-1 1 -1 1]);
title("Problem 2 N3")
saveas(fig,'hw 7 figs/N23.png')
figure
fig = fsurf(N24, [-1 1 -1 1]);
title("Problem 2 N4")
saveas(fig,'hw 7 figs/N24.png')
figure
fig = fsurf(N25, [-1 1 -1 1]);
title("Problem 2 N5")
saveas(fig,'hw 7 figs/N25.png')
