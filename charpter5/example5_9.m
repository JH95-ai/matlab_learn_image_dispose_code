I=imread('D:\��ͨmatlab����ͼ������ʶ������Դ��\chapter5\baby.bmp');
figure,imshow(I,[]);
Id=double(I);
h_lap=[-1 -1 -1;-1 8 -1;-1 -1 -1];%������˹����
I_lap=imfilter(Id,h_lap,'corr','replicate');%Laplacian��
figure,imshow(uint8(abs(I_lap)),[]); %ȡ����ֵ����255���ϵ���Ӧ�ض�
h_log=fspecial('log',5,0.5);%��СΪ5,sigma=0.5��LoG����
I_log=imfilter(Id,h_log,'corr','replicate');
figure,imshow(uint8(abs(I_log)),[]);
h_log=fspecial('log',5,2);%��СΪ5,sigma=2��LoG����
I_log=imfilter(Id,h_log,'corr','replicate');
figure,imshow(uint8(abs(I_log)),[]);