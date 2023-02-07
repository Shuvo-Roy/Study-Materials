%Digital signal....
%PSK 1 = has one phase else another;

clear all;
clc;
bit = [1, 0, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1];

v = 2;

am = 2;
fm = 1;
fs = 100;
bit_duration = 1; % bitrate = 1/bitduration
T = length(bit) * bit_duration; % len/bitrate.
t = 0:1/fs:T;

x_analog = am*sin(2*pi*fm*t);
subplot(4, 1, 1);
plot(t,x_analog);
xlim([0, T]);
ylim([-5, 5]);
grid on;

x_analog_2 = am*sin(2*pi*fm*t+180);
subplot(4, 1, 2);
plot(t,x_analog_2);
xlim([0, T]);
ylim([-5, 5]);
grid on;

x_digital = zeros(1, length(t));

%encoding
for i = 1:length(bit)
    from = (i-1)*fs*bit_duration+1;
    to = i*fs*bit_duration;
    
    if bit(i) == 1
        x_digital(from : to) = v;        
    else
        x_digital(from : to) = 0;
    end
end

subplot(4,1, 3);
plot(t, x_digital);
xlim([0, T]);
ylim([-5, 5]);
grid on;

%PSK
psk = zeros(1, length(t));

for i = 1:length(bit)
    from = (i-1)*fs*bit_duration+1;
    to = i*fs*bit_duration;
    
    if bit(i) == 1
        psk(from:to) = x_analog(from:to);
    else
        psk(from:to) = x_analog_2(from:to);
    end
end

subplot(4,1, 4);
plot(t, psk);
xlim([0, T]);
ylim([-5, 5]);
grid on;

%Demodulation

%Demodulation
counter = 0;
for i = 1 : length(t)
  if t(i) > counter
    counter = counter + 1;
    if psk((counter-1)*fs+1:counter*fs) == x_analog((counter-1)*fs+1:counter*fs)
      result(counter) = 1;
    else
      result(counter) = 0;
    endif
  endif
endfor

disp("Fsk Demodulation");
disp(result);