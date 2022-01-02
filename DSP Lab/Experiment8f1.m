clc;
clear all;
close all;
T=1;
t=0:0.0001:T;
f=2;

x=sin(2*pi*f*t);
subplot(4,1,1);
plot(t,x);
grid on;
xlabel('time');
ylabel('amplitute');
title('Continuous time signal');

fs=100;
ts=1/fs;
N=T*fs;
n=0:N-1;
xn=sin(2*pi*f*ts*n);
subplot(4,1,2);
stem(n,xn);
grid on;
xlabel('time');
ylabel('amplitute');
title('discreate time signal');

k=0:N-1;
for n=0:N-1
    xk(n+1)= sum(xn.*exp(-(j*2*pi*k*n)/N));
end
subplot(4,1,3);
stem(n,xk);