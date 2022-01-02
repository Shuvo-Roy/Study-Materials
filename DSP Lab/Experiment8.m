clc;
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
subplot(4,1,3);

xk=fft(xn);
n=0:N-1;
stem(n,2*abs(xk)/N);

xn=ifft(xk);
subplot(4,1,4);
stem(n,xn);