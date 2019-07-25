%image format conversion function

%function (dither)
%use dithering creation lesser image of information .for example from gray
%image to black and white picture ,maybe from RGB to index graph.most of
%time return uint8 type image.if outout image is include greater than 256
%index picture of color picture,can use uint16 type.

%function (gray2ind)
%from gray picture change index picture,more often than return uint8 type
%image,if output image is include greater than 256 index picture of color
%picture,can use uint16 type.

%for example [X,MAP]=gray2ind(I,N)  
%X is image data,MAP is color
%table;Input I is original image,N is the number of index color.

%function(grayslice)
%use threshold value method from gray picture creation index graph,more
%time return uint8 type iamge,if outout image is include greather than 256
%color index graph,than use uint16 type.

%for example X=grayslice(I,N) Y=grayslice(I,V)
%X is index image of outout,N is need divided threhold numbers,V is give
%threhold vector.

%function(im2bw)
%use threhold from gray graph,index graph,RGB graph created binary
%image,return logical matrix save image.

%for example BW=im2bw(I,LEVEL) or BW=im2bw(X,MAP.LEVEL) LEVEL is assign
%threhold.

%function (ind2gray)

%function (ind2rgb)
%from index graph change to RGB graph, return double type save graph

%function (mat2gray)
%use normalization method will be a data of matrix extend corresponding
%gray graph ,return picture use double type save.

%for example 
%I=mat2gray(A,[AMIN AMAX]) 
%AMIN and AMAX  respectively floor,upper.

%function (rgb2gray)
%from RGB graph creation gray graph,original graph is the same as return
%image.

%example I=rgb2gray(RGB)
