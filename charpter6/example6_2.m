A=imread('D:\��ͨmatlab����ͼ������ʶ������Դ��\chapter6\beauty.jpg');
B=imread('D:\��ͨmatlab����ͼ������ʶ������Դ��\chapter6\CAT.jpg');
%����Ҷ�任
Af=fft2(double(A));
Bf=fft2(double(B));
%�ֱ�������׺���λ��
AfA=abs(Af);
AfB=angle(Af);

BfA=abs(Bf);
BfB=angle(Bf);
%������λ�ײ��ؽ���������
AfR=AfA .*cos(BfB)+AfA .*sin(BfB) .*i;
BfR=BfA .*cos(AfB)+BfA .*sin(AfB) .*i; 
AR=abs(ifft2(AfR));
BR=abs(ifft2(BfR));
%��ʾͼ��
subplot(2,2,1);
imshow(A);
title('��Ůԭͼ��');
subplot(2,2,2);
imshow(B);
title('èԭͼ��');
subplot(2,2,3);
imshow(AR,[]);
title('��Ů�ķ�������è����λ�׽��');
subplot(2,2,4);
imshow(BR,[]);
title('è�ķ�������Ů�˵���λ�׽��');
