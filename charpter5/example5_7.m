I=imread('D:\��ͨmatlab����ͼ������ʶ������Դ��\chapter5\bacteria.BMP');
imshow(I);
I=double(I);
[Gx Gy]=gradient(I);%����x,y�����ݶ�
G=abs(Gx)+abs(Gy);
figure,imshow(G);
figure,imshow(G,[]);%�����ݶ�ͼ��
figure,imshow(Gx,[]);%x�����ݶ�ͼ��
figure,imshow(Gy,[]);%y�����ݶ�ͼ��