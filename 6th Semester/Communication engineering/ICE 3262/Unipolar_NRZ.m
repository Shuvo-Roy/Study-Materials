clc;
clear;
bit_seq = [1,0,1,0,0,1,1,0];
bit_dur = 1;
T = size(bit_seq,2) * bit_dur;
Fs = 100;
t = 0:1/Fs:T;
v0 = 0;
v1 = 5;
x_dig = zeros(1,size(t,2));

for i = 1:size(bit_seq,2)
  if bit_seq(i) == 1
    x_dig((i-1)*Fs*bit_dur+1:i*Fs*bit_dur) = v1;
  else
    x_dig((i-1)*Fs*bit_dur+1:i*Fs*bit_dur) = v0;
  endif
endfor

subplot(2,1,1)
plot(t,x_dig)
xlim([0,T])
ylim([-10,10])
grid on

#Demodulation 
counter = 0;

for i = 1 : size(t,2)
  if t(i) > counter
    counter = counter + 1
    result(counter) = x_dig(i)/v1
  endif
endfor
  
disp('NRZ Unipolar Decoding')
disp(result)