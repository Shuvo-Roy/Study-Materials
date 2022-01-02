clc;
clear all;
close all;
x=input('Enter the first sequence x : ');
rxx=xcorr(x,x);
subplot(3,1,1);
stem(rxx);
%firts method%
h=fliplr(x);
rxx=conv(x,h);
subplot(3,1,2);
stem(rxx);
%second method%
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
subplot(3,1,3);
stem(rxx);


