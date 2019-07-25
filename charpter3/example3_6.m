I=imread('rice.png');
thresh=graythresh(I)    %self-adaption confirm threshold value

bw1=im2bw(I,thresh);    %binaryzation
bw2=im2bw(I,130/255);   %binaryzation is done with 130 as threshold,which is converted to a value between 0 and 1
subplot(1,3,1);imshow(I);title('original graph');
subplot(1,3,2);imshow(bw1);title('use graythresh function');
subplot(1,3,3);imshow(bw2);title('only use im2bw function');