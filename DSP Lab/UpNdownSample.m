clc;
close all;
x=input('sequence:');
subplot(3,1,1);
stem(x);

I=2;
A=upsample(x,I);
subplot(3,1,2);
stem(A);

D=2;
B=downsample(x,D);
subplot(3,1,3);
stem(B);