f=imread('D:\��ͨmatlab����ͼ������ʶ������Դ��\chapter5\fatBaby.bmp');
imshow(f);
w=[1 1 1;1 1 1 ;1 1 1]/9;%�˲�ģ��
g=imfilter(f,w,'corr','replicate');%�˲�
figure,imshow(g);
w2=[1 1 1;1 1 1 ;1 1 1]/19;%�˲�ģ��
conv=imfilter(f,w2,'conv','replicate');
figure,imshow(conv);
