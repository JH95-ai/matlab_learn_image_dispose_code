u=[-10:0.1:10];
v=[-10:0.1:10];
[U,V]=meshgrid(u,v);
H=exp(-(U.^2+V.^2)./2/3*2);
mesh(u,v,H);
%mesh function is draw three-dimensional hook face ,first parameter and
%second parameter respective
ly  is x-axis and y-axis 