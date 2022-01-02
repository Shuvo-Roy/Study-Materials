clc;
close all;
N=31;
wc=0.5*pi;
A=fir1(N-1,wc/pi,'low',hamming(N));
w=0:0.01:pi;
h=freqz(A,1,w);
figure (1);
plot(w/pi,abs(h));
xlabel('frequence--->');
ylabel('Amplitude--->');
title('Magnitude');

A=fir1(N-1,wc/pi,'low',hamming(N));
w=0:0.01:pi;
h=freqz(A,1,w);
figure (1);
plot(w/pi,abs(h));
xlabel('frequence--->');
ylabel('Amplitude--->');
title('Magnitude');

A1=fir1(N-1,wc/pi,'low',hanning(N));
w=0:0.01:pi;
h1=freqz(A1,1,w);
figure (2);
plot(w/pi,abs(h1));
xlabel('frequence--->');
ylabel('Amplitude--->');
title('Magnitude');

A2=fir1(N-1,wc/pi,'low',rectwin(N));
w=0:0.01:pi;
h2=freqz(A2,1,w);
figure (3);
plot(w/pi,abs(h2));
xlabel('frequence--->');
ylabel('Amplitude--->');
title('Magnitude');



figure (4);
plot(w/pi,angle(h));
xlabel('frequence--->');
ylabel('Amplitude--->');
title('Phase resource');
