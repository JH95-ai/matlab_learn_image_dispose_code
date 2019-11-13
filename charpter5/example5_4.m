I=imread('D:\精通matlab数字图像处理与识别书中源码\chapter5\lena_AdaptiveMedianFilter.bmp');
imshow(I);
J=imnoise(I,'salt & pepper');%为图像叠加椒盐噪声
figure,imshow(J);
w=[1 2 1;
   2 4 2;
   1 2 1]/16;
J1=imfilter(J,w,'corr','replicate');%高斯平滑
figure,imshow(J1);
w=[1 1 1;
   1 1 1;
   1 1 1]/9;
J2=imfilter(J,w,'corr','replicate');%平均平滑
figure,imshow(J2);
J3=medfilt2(J,[3,3]);%中值滤波
figure,imshow(J3);