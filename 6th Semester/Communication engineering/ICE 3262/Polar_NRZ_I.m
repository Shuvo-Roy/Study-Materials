clc;
clear all;
bit_seq = [1,0,1,0,0,1,1,0];
bit_dur = 1;
Fs = 100;
T = bit_dur * size(bit_seq,2);
t = 0:1/Fs:T;
x_dig = zeros(1,size(t,2));

last_bit = 5;
v1 = 5;

for i = 1:size(bit_seq,2)
  if bit_seq(i) == 1
    x_dig((i-1)*Fs*bit_dur+1:i*Fs*bit_dur) = -last_bit;
    last_bit = -last_bit;
  else
    x_dig((i-1)*Fs*bit_dur+1:i*Fs*bit_dur) = last_bit;
  endif
endfor

plot(t,x_dig)
xlim([0,T]);
ylim([-10,10]);
grid on

counter = 0;
for i=1:length(t)
  if t(i) > counter
    counter = counter + 1;
    if x_dig(i) != last_bit;
      result(counter) = 1;
      last_bit = -last_bit;
    else
      result(counter) = 0;
    endif
  endif
endfor

disp('Polar NRZ-I')
disp(result)