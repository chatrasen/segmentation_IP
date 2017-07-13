print = csvread('sample2.csv');
print_t = print(:,1);
print_x = print(:,2);

%factor = 1.57016683

 plot(print_t,print_x);
 figure;
window = hann(32);
noverlap = 16;
nfft = 1024;
[S,F,T] = spectrogram(print_x,window,noverlap,nfft,10,'yaxis');
% surf(T,F,10*log10(P),'edgecolor','none');
% axis tight;
% view(0,90);
% colormap(hot);
% set(gca,'clim',[-80 -30]);



F = round(F*100)/100;
 %figure;
disp(T);
imagesc(T,F, 20*log10(abs(S))); colormap(jet); colorbar;
set(gca,'YDir','normal');
% colormap(spring(15));
title('Magnitude spectrogram of signal', 'Interpreter', 'none');
