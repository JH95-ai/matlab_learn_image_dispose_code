I=imread('D:\��ͨmatlab����ͼ������ʶ������Դ��\chapter5\bacteria.BMP');
imshow(I);
I=double(I);%ת��Ϊdouble��,�������Ա��渺ֵ,����uint8��Ѹ�ֵ�õ�
w1=[-1 0;0 1];
w2=[0 -1;1 0];
G1=imfilter(I,w1,'corr','replicate');%���ظ���ʽ���߽�
G2=imfilter(I,w2,'corr','replicate');
G=abs(G1)+abs(G2);%����Robert�ݶ�
figure,imshow(G,[]);
figure,imshow(abs(G1),[]);
figure,imshow(abs(G2),[]);