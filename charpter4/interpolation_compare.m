A=imread('D:\test_matlab\pout.bmp');  %读取图片
B=imrotate(A,30,'nearest');
C=imrotate(A,30,'bilinear');
D=imrotate(A,30,'bicubic');
%图像旋转30的插值方法比较
subplot(1,4,1),imshow(A);
title('原图像');
subplot(1,4,2),imshow(B);
title('最近邻插值');
subplot(1,4,3),imshow(C);
title('双线性插值');
subplot(1,4,4),imshow(D);
title('双三次插值');
