[x,Fs] = audioread("instru1.wav");
m = abs(fft(x));
F = (0:length(m)-1)*Fs/length(m);
figure(1)
plot(F,m)
title('FFT of Instru1.wav')
xlabel("FREQUENCY");
ylabel("AMPLITUDE");


window_length = 100; 
overlap = 10;        
window_length_2 = 150;

figure(2);
spectrogram(x, hamming(window_length), overlap);
title('Spectrogram of Instru.wav Signal hamming 100');


[x1,Fs1] = audioread("opera.wav");
m1 = abs(fft(x1));
F1 = (0:length(m1)-1)*Fs1/length(m1);
figure(3)
plot(F1,m1)
title('FFT of Opera.wav')
xlabel("FREQUENCY");
ylabel("AMPLITUDE");

window_length = 100;
overlap = 10;        

figure(4);
spectrogram(x1, hamming(window_length), overlap);
title('Spectrogram of Opera.wav Signal hamming 100');
