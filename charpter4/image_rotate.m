%Χ�����ĵ��ͼ����ת
A=imread('rgb.tif');
%����ڲ�ֵ������ת30����������ͼ��
B=imrotate(A,30,'nearest','crop');
subplot(1,2,1),imshow(A);
title('ԭͼ��');
subplot(1,2,2),imshow(B);
title('��ʱ����ת30');