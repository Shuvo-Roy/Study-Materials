clc;
clear all;
close all;
x=input('Enter the first sequence : ');
subplot(4,1,1);
stem(x);
y=input('Enter The second Sequence: ');
subplot(4,1,2);
stem(y);
%sum of two sequence
sum=x+y;
subplot(4,1,3);
stem(sum);

%mul of two sequence
mul=x.*y;
subplot(4,1,4);
stem(mul);
