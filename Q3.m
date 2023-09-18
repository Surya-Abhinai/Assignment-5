duration = 3;  
fs = 4000;     
recObj = audiorecorder(fs, 16, 1); 
disp('Start speaking.')
recordblocking(recObj, duration);
disp('Recording finished.');

audiowrite('recorded_name.wav', getaudiodata(recObj), fs);
disp('Recording saved as recorded_name.wav');

[y, fs] = audioread('recorded_name.wav');

figure;
spectrogram(y, hamming(256), 128, 512, fs, 'yaxis');
title('Spectrogram of the name Surya Abhinai');
xlabel('Time (s)');
ylabel('Frequency (Hz)');
