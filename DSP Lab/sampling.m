clc;
clear all;
close all;
T=1%;
t=0:0.001:T;
f=4;
y=cos(2*pi*f*t);
subplot(3,1,1);
plot(t,y);
title('cos weve');
xlabel('time-->');
ylabel('amplitude-->');


y=sin(2*pi*f*t);
subplot(3,1,2);
plot(t,y);
title('sin weve');
xlabel('time-->');
ylabel('amplitude-->');