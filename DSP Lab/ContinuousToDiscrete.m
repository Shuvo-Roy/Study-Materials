clc;
clear all;
close all;
T=1%;
t=0:0.001:T;
f=2;
%y=cos(2*pi*f*t);
y=sin(2*pi*f*t);
subplot(2,1,1);
plot(t,y);

fs=150;
Ts=1/fs;
N=T*fs;
n=0:N-1;
Xn=sin(2*pi*f*Ts*n);
subplot(2,1,2);
stem(n,Xn);
