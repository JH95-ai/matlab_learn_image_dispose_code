I=imread('pout.tif');
%gamma is 0.75
figure(1);
subplot(1,3,1);
imshow(imadjust(I,[],[],0.75));
title('gamma is 0.75')

%gamma is 1
subplot(1,3,2);
imshow(imadjust(I,[],[],1));
title('gamma is 1');

%gamma is 1.5
subplot(1,3,3);
imshow(imadjust(I,[],[],1.5));
title('gamma is 1.5');
figure(2);
subplot(1,3,1);
imhist(imadjust(I,[],[],0.75));
title('gamma is 0.75');
subplot(1,3,2);
imhist(imadjust(I,[],[],1));
title('gamma is 1');
subplot(1,3,3);
imhist(imadjust(I,[],[],1.5));
title('gamma is 1.5');