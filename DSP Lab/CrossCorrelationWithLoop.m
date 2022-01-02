clc;
clear all;
close all;
x=input('Enter the first sequence x : ');
y=input('Enter the first sequence x : ');
rxy=xcorr(x,y);
subplot(3,1,1);
stem(rxy);
%firts method%
h=fliplr(y);
rxy=conv(x,h);
subplot(3,1,2);
stem(rxy);
%second method%
lx=length(x);
lh=length(h);
for n=1:(lx+lh-1)
    rxy(n)=0;
    for k=1:lx
        if((n-k)>=0&(n-k)<lh)
            rxy(n)=rxy(n)+x(k).*h(n-k+1);
        end
    end
end
subplot(3,1,3);
stem(rxy);


