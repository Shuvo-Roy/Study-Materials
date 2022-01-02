clc;
close all;
x=input('Enter the first sequence x : ');
r=xcorr(x,x);
stem(r);

