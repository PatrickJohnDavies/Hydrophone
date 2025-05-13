clc
clear
close all

pkg load signal

[y, fs] = audioread ('C:\all\Projects\Hydrophone\experiments\20240519\data\beach.flac');
##y = y(1:(length(y)/2));
l = length(y);
x = (0:(l - 1)) * 1/fs;
plot(x, y)

##------------------------------------------------------------------------------
##figure()
##Y = fft(y);
##plot(fs/l*(0:l-1),abs(Y),"LineWidth",3)
##title("Complex Magnitude of fft Spectrum")
##xlabel("f (Hz)")
##ylabel("|fft(X)|")


##------------------------------------------------------------------------------
figure()
Y = fft(y);
P2 = abs(Y/l);
P1 = P2(1:l/2+1);
P1(2:end-1) = 2*P1(2:end-1);

f = fs/l*(0:(l/2));
plot(f,P1)
title("Single-Sided Amplitude Spectrum of X(t)")
xlabel("f (Hz)")
ylabel("|P1(f)|")


##------------------------------------------------------------------------------
figure()
step=ceil(50*fs/1000);    # one spectral slice every 20 ms
window=ceil(100*fs/1000); # 100 ms data window
window_l = 2^nextpow2(window);
specgram(y, window_l, fs);
##[S, f, t] = specgram(y, 2^nextpow2(window), fs, window, window-step);


##------------------------------------------------------------------------------
##figure()
##step=ceil(50*fs/1000);    # one spectral slice every 20 ms
##window=ceil(100*fs/1000); # 100 ms data window
##Y = stft(y, window, window-step);
##plot(abs(Y))
##title("Complex Magnitude of fft Spectrum")
##xlabel("f (Hz)")
##ylabel("|fft(X)|")


##------------------------------------------------------------------------------
##figure()
##step=ceil(50*fs/1000);    # one spectral slice every 20 ms
##window=ceil(100*fs/1000); # 100 ms data window
##Y = stft(y, window, window-step);
##sdb = mag2db(abs(Y));
##mesh(t,f/1000,sdb);
##
##cc = max(sdb(:))+[-60 0];
##ax = gca;
##ax.CLim = cc;
##view(2)
##colorbar
