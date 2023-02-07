clc;
clear all;

bits = [1 0 0 0 0 0 0 0 0 1 0 0 0 0 1];
bitrate = 1;
Fs = 100;
bit_dur = 1;
T = length(bits) * bit_dur;
t = 0:1/Fs:T;
x = zeros(1,length(t));
counter = 0;
last_bit = 1;
nonzero_bit = 0;
x = zeros(1,length(t));

for i = 1 : length(bits)
  if bits(i) == 0
    counter = counter + 1;
    if counter == 4
      if mod(nonzero_bit,2) ==  1
        x((i-1-3)*Fs*bit_dur+1:(i-3)*Fs*bit_dur) = 0;
        x((i-1-2)*Fs*bit_dur+1:(i-2)*Fs*bit_dur) = 0;
        x((i-1-1)*Fs*bit_dur+1:(i-1)*Fs*bit_dur) = 0;
        x((i-1)*Fs*bit_dur+1:(i)*Fs*bit_dur) = last_bit;
        nonzero_bit = nonzero_bit + 1;
        counter = 0;
      else
          x((i-1-3)*Fs*bit_dur+1:(i-3)*Fs*bit_dur) = -last_bit;
          last_bit = -last_bit;
          x((i-1-2)*Fs*bit_dur+1:(i-2)*Fs*bit_dur) = 0;
          x((i-1-1)*Fs*bit_dur+1:(i-1)*Fs*bit_dur) = 0;
          x((i-1)*Fs*bit_dur+1:(i)*Fs*bit_dur) = last_bit;
          nonzero_bit = nonzero_bit + 2;
          counter = 0;
      endif
        
    endif
  else
    x((i-1)*Fs*bit_dur+1:i*Fs*bit_dur) = -last_bit;
    last_bit = -last_bit;
    nonzero_bit = nonzero_bit + 1;
    counter = 0;
  endif
endfor

plot(t,x);
xlim([0 T]);
ylim([-2 2]);
grid on

last_bit = 1;
counter = 0;

for i = 1 : length(t)
  if t(i) > counter
    counter = counter + 1;
    if x(i) == last_bit
      result(counter-3:counter) = 0;
    else
      if x(i) == 0
        result(counter) = 0;
      else
        result(counter) = 1;
        last_bit = -last_bit;
      endif
    endif
  endif
endfor

disp("HDB3 Decoding")
disp(result);
  
  
  
  
  