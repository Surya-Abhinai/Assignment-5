alpha = 1 + mod(525,3);
t = 0:1/100:(10-1/100);
f = linspace(4,10,1000);
x = sin(2*pi.*f.*t);
figure(1)
plot(t,x)
xlabel('Time')
ylabel('Magnitude')
m = abs(fft(x));
F = (0:length(m)-1)*100/length(m);
figure(2)
plot(F,m)
title('Magnitude')
xlabel("FREQUENCY");
ylabel("AMPLITUDE");


window_length = 100; 
overlap = 10;        
window_length_2 = 150;

figure(3);
spectrogram(x, hamming(window_length), overlap);
title('Spectrogram of Chirp Signal hamming 100');
figure(4);
spectrogram(x, hamming(window_length_2), overlap);
title('Spectrogram of Chirp Signal hamming 150');
figure(5);
spectrogram(x, hanning(window_length), overlap);
title('Spectrogram of Chirp Signal hanning');
figure(6);
spectrogram(x, blackman(window_length), overlap);
title('Spectrogram of Chirp Signal blackman')
