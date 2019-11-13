I=imread('D:\精通matlab数字图像处理与识别书中源码\chapter5\bacteria.BMP');
imshow(I);
I=double(I);%转换为double型,这样可以保存负值,否则uint8会把负值裁掉
w1=[-1 0;0 1];
w2=[0 -1;1 0];
G1=imfilter(I,w1,'corr','replicate');%以重复方式填充边界
G2=imfilter(I,w2,'corr','replicate');
G=abs(G1)+abs(G2);%计算Robert梯度
figure,imshow(G,[]);
figure,imshow(abs(G1),[]);
figure,imshow(abs(G2),[]);