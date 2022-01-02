clc;
clear all;
close all;
x=input('Enter the first sequence : ');
%matrix
subplot(3,1,1);
stem(x);
y=input('Enter The second Sequence: ');
%matrix
subplot(3,1,2);
stem(y);

A=conv(x,y);
subplot(3,1,3);
stem(A);
