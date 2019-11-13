I=imread('D:\精通matlab数字图像处理与识别书中源码\chapter5\baby.bmp');
figure,imshow(I,[]);
Id=double(I);
h_lap=[-1 -1 -1;-1 8 -1;-1 -1 -1];%拉普拉斯算子
I_lap=imfilter(Id,h_lap,'corr','replicate');%Laplacian锐化
figure,imshow(uint8(abs(I_lap)),[]); %取绝对值并将255以上的响应截断
h_log=fspecial('log',5,0.5);%大小为5,sigma=0.5的LoG算子
I_log=imfilter(Id,h_log,'corr','replicate');
figure,imshow(uint8(abs(I_log)),[]);
h_log=fspecial('log',5,2);%大小为5,sigma=2的LoG算子
I_log=imfilter(Id,h_log,'corr','replicate');
figure,imshow(uint8(abs(I_log)),[]);