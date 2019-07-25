I=imread('coins.png');  %read original graph 
I=im2double(I);     %change data type is double
[M,N]=size(I);      %calculate graph area
figure(1);
imshow(I);
title('original graph');
figure(2);
[H,x]=imhist(I,64)  %calculate 64 small section gray histogram
stem(x,(H/M/N),'.') %show original graph histogram
title('original graph');

%increase contrast 
Fa=2;Fb=-55;
O=Fa.*I+Fb/255;

figure(3);
subplot(2,2,1);
imshow(O);
title('Fa=2 Fb=-55 increase contrast');

figure(4);
subplot(2,2,1);
[H,x]=imhist(O,64)
stem(x,(H/M/N),'.');
title('Fa=2,Fb=-55 increase contrast');

%decrease contrast
Fa=0.5;Fb=-55;
O=Fa.*I+Fb/255;
figure(5);
imshow(O)
title('decrease contrast original graph');

figure(6);
[H,x]=imhist(O,64)
stem(x,(H/M/N),'.');
title('decrease contrast histogram graph');

%linear increase luminance;
Fa=1;Fb=55;
O=Fa.*I+Fb/255;
figure(7)
subplot(2,2,3);
imshow(O)
title('linear increase luminance')

figure(8);
subplot(2,2,3);
[H,x]=imhist(O,64);
stem(x,(H/M/N),'.');
title('Fa=1 Fb=55 linear increase luminance');

%reverse video
Fa=-1;Fb=255;
O=Fa.*I+Fb/255;
figure(9);
subplot(2,2,4);
imshow(O);
title('Fa=-1, Fb= 255 reverse video');
figure(10)
subplot(2,2,4);
[H,x]=imhist(O,64);
stem(x,(H/M/N),'.');
title('Fa=-1,Fb=255 reverse video');