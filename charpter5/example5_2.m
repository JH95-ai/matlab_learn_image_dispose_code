I=imread('D:\��ͨmatlab����ͼ������ʶ������Դ��\chapter5\baby_noise.bmp');
figure,imshow(I);
h=fspecial('average',3); %3*3ƽ��ģ��
I3=imfilter(I,h,'corr','replicate');%����˲�,�ظ����߽�
figure,imshow(I3)
h2=fspecial('average',5);%5*5ƽ��ģ��
I5=imfilter(I,h2,'corr','replicate');
figure,imshow(I5);
h3=fspecial('average',7);
I7=imfilter(I,h3,'corr','replicate');
figure,imshow(I7);