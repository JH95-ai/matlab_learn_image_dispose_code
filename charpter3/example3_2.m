I=imread('pout.tif');
figure;
[M,N]=size(I);%calculate  graph size
[counts,x]=imhist(I,32);    %calculate have 32 minizone 's gray histogram
counts=counts /M/N;         %calculate normalization gray histogram each interval value;
stem(x,counts);         %draw normalization historgram;