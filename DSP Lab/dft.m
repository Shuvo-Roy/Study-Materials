clc;
clear all;
close all;
T=1%;
t=0:0.001:T;
f=10;
%y=cos(2*pi*f*t);%
%subplot(3,1,1);%
%plot(t,y);%
y=sin(2*pi*f*t);
subplot(3,1,1);
plot(t,y);

fs=50;
Ts=1/fs;
N=T*fs;
n=0:N-1;
Xn=sin(2*pi*f*Ts*n);
subplot(3,1,2);
stem(n,Xn);
subplot (3,1,3);
xk=fft(Xn);
n=0:N-1
stem(n,abs(xk)/N/2);
