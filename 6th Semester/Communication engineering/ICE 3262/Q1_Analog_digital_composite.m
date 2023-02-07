clc;
clear all;
a_x = 5;
phi = 0;
T = 5;
F = 2;
Fs = 10;
t = 0:1/Fs:T;
x = a_x * sin(2*pi*F*t+phi);

subplot(3,1,1);
plot(t,x);
title("Sine Wave");

y = a_x * cos(2*pi*F*t+phi);
subplot(3,1,2);
plot(t,y);
title("Cosine Wave");

z = x + y;
subplot(3,1,3);
plot(t,z);
xlabel("Time");
ylabel("Amplitude")
title("Composite signal")