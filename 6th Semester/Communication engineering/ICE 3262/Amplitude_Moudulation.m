%From Tutorialbit
clc;
clear all;
Ac = 1;
Am = 1;
Fc = 5;
Fm = 1;

T = 10;
t = 0 : 0.001:T;

Ym = Am*sin(2 * pi * Fm * t);

subplot(3,1,1);
plot(t,Ym);
title("Mesage Signal");
Yc = Ac.*sin(2 * pi * Fc * t);
subplot(3,1,2);
plot(t,Yc);
title("Carrier Signal");
Z = (Ac + Ym).*Yc;
subplot(3,1,3);
plot(t,Z,'r');
title("Modulated Signal");

