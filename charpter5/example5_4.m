I=imread('D:\��ͨmatlab����ͼ������ʶ������Դ��\chapter5\lena_AdaptiveMedianFilter.bmp');
imshow(I);
J=imnoise(I,'salt & pepper');%Ϊͼ����ӽ�������
figure,imshow(J);
w=[1 2 1;
   2 4 2;
   1 2 1]/16;
J1=imfilter(J,w,'corr','replicate');%��˹ƽ��
figure,imshow(J1);
w=[1 1 1;
   1 1 1;
   1 1 1]/9;
J2=imfilter(J,w,'corr','replicate');%ƽ��ƽ��
figure,imshow(J2);
J3=medfilt2(J,[3,3]);%��ֵ�˲�
figure,imshow(J3);