A=imread('rgb.tif');
B=imresize(A,1.2,'nearest');
%ͼ������1.2��
figure,imshow(A);title('ԭͼ��');
figure,imshow(B);title('ͼ������');