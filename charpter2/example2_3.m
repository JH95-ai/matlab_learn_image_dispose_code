A=randn(3000,3000);
f=zeros(3000,3000);
u0=100;v0=100;
tic; %begin time
%a one-dimensional method
%outer layer circulation begin
for r=1:3000
    u0x=u0*(r-1);
    %inter layer circulation begin
    for c=1:3000
        v0y=v0*(c-1);
        f(r,c)=A(r,c)*cos(u0x+v0y);
        %inter layer for circulation end
    end
%outer layer for circulation end
end
t1=toc   %stop time and record time to t1
tic;    %again begin time
%two-dimensional method
r=0:3000-1;
c=0:3000-1;
[C,R]=meshgrid(c,r);
%meshgrid is generate grid coordinate function,reality is generate needed
%two-dimensional pixel coordinate fitted expression
g=A.*cos(u0.*R+v0.*C);
%system will self-motion execute circulation operation,reality operates
%according to the specified formula for each data in R and C
t2=toc %end time and save time to t2
