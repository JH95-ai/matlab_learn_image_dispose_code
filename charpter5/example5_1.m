f=imread('D:\精通matlab数字图像处理与识别书中源码\chapter5\fatBaby.bmp');
imshow(f);
w=[1 1 1;1 1 1 ;1 1 1]/9;%滤波模板
g=imfilter(f,w,'corr','replicate');%滤波
figure,imshow(g);
w2=[1 1 1;1 1 1 ;1 1 1]/19;%滤波模板
conv=imfilter(f,w2,'conv','replicate');
figure,imshow(conv);
