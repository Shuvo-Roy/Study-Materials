clc;
close all;
N=31;
wc=0.5*pi;
A=fir1(N-1,wc/pi,'low',hamming(N));
w=0:0.01:pi;
h=freqz(A,1,w);
A1=fir1(N-1,wc/pi,'low',hanning(N));
w=0:0.01:pi;
h1=freqz(A1,1,w);
A2=fir1(N-1,wc/pi,'low',rectwin(N));
w=0:0.01:pi;
h2=freqz(A2,1,w);
plot(w/pi,abs(h));
hold on;
plot(w/pi,abs(h1));
plot(w/pi,abs(h2));
legend('hammimg','hanning','rectangular');
xlabel('frequence--->');
ylabel('Amplitude--->');
title('Magnitude');

figure(2);
plot(w/pi,angle(h));
hold on;
plot(w/pi,angle(h1));
plot(w/pi,angle(h2));
legend('hammimg','hanning','rectangular');
