clc;
clear;
close all;
x=input('Enter first sequence:');
subplot(3,1,1);
stem(x);
title('input x');

y=input('Enter first sequence:');
subplot(3,1,2);
stem(y);
title('input y');

h=fliplr(y);
lx=length(x);
lh=length(y);
for n=1:(lx+lh-1)
    rxx(n)=0;
    for k=1:lx
        if((n-k)>=0&(n-k)<lh)
            rxx(n)=rxx(n)+x(k).*h(n-k+1);
        end
    end
end
subplot(3,1,3);
stem(rxx);
title('using loop');