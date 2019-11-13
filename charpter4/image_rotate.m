%围绕中心点的图像旋转
A=imread('rgb.tif');
%最近邻插值法逆旋转30’，并剪切图像
B=imrotate(A,30,'nearest','crop');
subplot(1,2,1),imshow(A);
title('原图像');
subplot(1,2,2),imshow(B);
title('逆时针旋转30');