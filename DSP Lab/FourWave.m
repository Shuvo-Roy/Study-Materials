clc;
clear all;
close all;
t=0:.001:1;
f=input('Enter the value of frequency');
a=input('Enter the value of amplitude');
subplot(3,3,1);
y=a*sin(2*pi*f*t);
plot(t,y,'r');
xlabel('time');
ylabel('amplitude');
title('sine wave')
grid on;
subplot(3,3,2);
z=a*cos(2*pi*f*t);
plot(t,z);
xlabel('time');
ylabel('amplitude');
title('cosine wave')
grid on;
subplot(3,3,3);
s=a*square(2*pi*f*t);
plot(t,s);
xlabel('time');
ylabel('amplitude');
title('square wave')
grid on;
subplot(3,3,4);
plot(t,t);
xlabel('time');
ylabel('amplitude');
title('ramp wave')
grid on;
subplot(3,3,5);
plot(t,a,'r');
xlabel('time');
ylabel('amplitude');
title('unit step wave')
grid on;