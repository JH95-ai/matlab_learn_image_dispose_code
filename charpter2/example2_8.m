I=imread('pout.tif'); %read graph
%show it in different windows
figure; %creation a new window
imshow(I);
figure;
imshow(I,[ ]);
%show it in same window
figure;
subplot(1,2,1);
imshow(I);
subplot(1,2,2);
imshow(I,[ ]);
