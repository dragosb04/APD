function audioOut = modifier(path, Fs, g)

gain = 10^(g/20);

audioIn = audioread(path);

audioOut = audioIn * gain;

audiowrite('currentModifiedFile.wav', audioOut, Fs)

figure;plot(audioIn);title('original');xlabel('Nr. of samples');ylabel('Amplitude');

%hold on;

figure;plot(audioOut);title('modified');xlabel('Nr. of samples');ylabel('Amplitude');
end