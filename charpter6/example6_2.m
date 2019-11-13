A=imread('D:\精通matlab数字图像处理与识别书中源码\chapter6\beauty.jpg');
B=imread('D:\精通matlab数字图像处理与识别书中源码\chapter6\CAT.jpg');
%求傅里叶变换
Af=fft2(double(A));
Bf=fft2(double(B));
%分别求幅度谱和相位谱
AfA=abs(Af);
AfB=angle(Af);

BfA=abs(Bf);
BfB=angle(Bf);
%交换相位谱并重建复数矩阵
AfR=AfA .*cos(BfB)+AfA .*sin(BfB) .*i;
BfR=BfA .*cos(AfB)+BfA .*sin(AfB) .*i; 
AR=abs(ifft2(AfR));
BR=abs(ifft2(BfR));
%显示图像
subplot(2,2,1);
imshow(A);
title('美女原图像');
subplot(2,2,2);
imshow(B);
title('猫原图像');
subplot(2,2,3);
imshow(AR,[]);
title('美女的幅度谱与猫的相位谱结合');
subplot(2,2,4);
imshow(BR,[]);
title('猫的幅度谱与女人的相位谱结合');
