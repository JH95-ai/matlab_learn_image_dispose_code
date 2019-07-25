%定义结构体
Struct.Name='Harry';
Struct.Age=15;
Struct.SalaryMatrix=[1 0;15 2];
A=[1,2,3;4,5,6;7,8,9]
[V D]=eigs(A);

%2_1.m
arg=input('Input argument:');  %提示输入arg变量
total=0;detail=0;
%if语句开始
if(arg==1)
    %外层for语句开始
    for i=1:1:5
        total=total+1;
        %内层for语句开始
        for j=0:0.1:1
            detail=detail+total;
         %内层for语句结束
        end
   %外层for语句结束
    end
%if sequences another branch
elseif(arg==2)
    total=0;
    detail=total;
 %if sequence other all branch
else
    error('Invalid arguments!');
 %if sequence ned
end
detail %show detal variable

