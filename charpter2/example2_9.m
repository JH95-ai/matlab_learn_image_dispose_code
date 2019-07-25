load mri %load MATLAB build-in MRI(ºË´Å¹²Õñ) graph
imshow(D(:,:,7),map);   %show  one picture during more picture
%same window show 
figure,montage(D,map);
zoom o
%change to movie
figure
mov=immovie(D,map);
colormap(map); %set color table
movie(mov);
impixelinfo;
imdistline;