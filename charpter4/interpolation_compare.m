A=imread('D:\test_matlab\pout.bmp');  %��ȡͼƬ
B=imrotate(A,30,'nearest');
C=imrotate(A,30,'bilinear');
D=imrotate(A,30,'bicubic');
%ͼ����ת30�Ĳ�ֵ�����Ƚ�
subplot(1,4,1),imshow(A);
title('ԭͼ��');
subplot(1,4,2),imshow(B);
title('����ڲ�ֵ');
subplot(1,4,3),imshow(C);
title('˫���Բ�ֵ');
subplot(1,4,4),imshow(D);
title('˫���β�ֵ');
