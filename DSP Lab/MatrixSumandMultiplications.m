clc;
clear all;
close all;
x=input('Enter the first sequence : ');
%[1 2 3]
subplot(4,1,1);
stem(x);
title('sequence 1:');
y=input('Enter The second Sequence: ');
%[1 2 3]
subplot(4,1,2);
stem(y);
title('sequence 2:');

sum=x+y;
subplot(4,1,3);
stem(sum);
title('sum');

mul=x.*y;
subplot(4,1,4);
stem(mul);
title('mul');