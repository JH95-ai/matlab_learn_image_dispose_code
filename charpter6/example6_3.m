I=imread('D:\��ͨmatlab����ͼ������ʶ������Դ��\chapter5\baby_noise.bmp');
%�����˾�
ff=imidealflpf(I,20);
%Ӧ���˾�
out=imfreqfilt(I,ff);
figure(1);
subplot(2,2,1);
imshow(I);
title('source');
%����FFT����ʾ
temp=fft2(double(I));
temp=fftshift(temp);
temp=log(1+abs(temp));
figure(2);
subplot(2,2,1);
imshow(temp,[]);
title('source');
figure(1);
subplot(2,2,2);
imshow(out);
title('Ideal LPF,freq=20');
temp=fft2(out);
temp=fftshift(temp);
temp=log(1+abs(temp));
figure(2);
subplot(2,2,2);
imshow(temp,[]);
title('Idel LPF,freq=20');
%�����˾�
ff=imidealflpf(I,40);
%Ӧ���˾�
out=imfreqfilt(I,ff);
figure(1);
subplot(2,2,3);
imshow(out);
title('Ideal LPF, freq=40');
%����FFT����ʾ
temp=fft2(out);
temp=fftshift(temp);
temp=log(1+abs(temp));
figure(2);
subplot(2,2,3);
imshow(temp,[]);
title('Ideal LPF,freq=40');
%�����˾�
ff=imidealflpf(I,60);
%Ӧ���˾�
out=imfreqfilt(I,ff);
figure(1);
subplot(2,2,4);
imshow(out);
title('Ideal LPF,freq=60');
%����FFT����ʾ
temp=fft2(out);
temp=fftshift(temp);
temp=log(1+abs(temp));
figure(2);
subplot(2,2,4);
imshow(temp,[]);
title('Ideal LPF, freq=60');