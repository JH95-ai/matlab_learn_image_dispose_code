I=imread('D:\精通matlab数字图像处理与识别书中源码\chapter5\baby_noise.bmp');
figure,imshow(I);
h=fspecial('average',3); %3*3平均模板
I3=imfilter(I,h,'corr','replicate');%相关滤波,重复填充边界
figure,imshow(I3)
h2=fspecial('average',5);%5*5平均模板
I5=imfilter(I,h2,'corr','replicate');
figure,imshow(I5);
h3=fspecial('average',7);
I7=imfilter(I,h3,'corr','replicate');
figure,imshow(I7);