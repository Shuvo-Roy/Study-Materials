clc;
clear;
close all;
x=input('Enter first sequence:');
subplot(4,1,1);
stem(x);
title('input');

rxx=xcorr(x,x);
subplot(4,1,2);
stem(rxx);
title('build in function');

h=fliplr(x);
rxx=conv(x,h);
subplot(4,1,3);
stem(rxx);
title('convo');


lx=length(x);
lh=length(h);
for n=1:(lx+lh-1)
    rxx(n)=0;
    for k=1:lx
        if((n-k)>=0&(n-k)<lh)
            rxx(n)=rxx(n)+x(k).*h(n-k+1);
        end
    end
end
subplot(4,1,4);
stem(rxx);
title('using loop');

