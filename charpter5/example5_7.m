I=imread('D:\精通matlab数字图像处理与识别书中源码\chapter5\bacteria.BMP');
imshow(I);
I=double(I);
[Gx Gy]=gradient(I);%计算x,y方向梯度
G=abs(Gx)+abs(Gy);
figure,imshow(G);
figure,imshow(G,[]);%整体梯度图像
figure,imshow(Gx,[]);%x方向梯度图像
figure,imshow(Gy,[]);%y方向梯度图像