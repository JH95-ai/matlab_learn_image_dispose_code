%镜像变换
A=imread('rgb.tif');
[height,width,dim]=size(A);
tform=maketform('affine',[-1 0 0;0 1 0;width 0 1]);
%定义水平镜像变换矩阵
B=imtransform(A,tform,'nearest');
tform2=maketform('affine',[1 0 0;0 -1 0;0 height 1]);
%定义竖直镜像变换矩阵
C=imtransform(A,tform2,'nearest');
subplot(1,3,1),imshow(A);
title('原图像');
subplot(1,3,2),imshow(B);
title('水平镜像');
subplot(1,3,3),imshow(C);
title('竖直镜像')