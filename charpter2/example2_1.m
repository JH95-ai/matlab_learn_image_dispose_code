%����ṹ��
Struct.Name='Harry';
Struct.Age=15;
Struct.SalaryMatrix=[1 0;15 2];
A=[1,2,3;4,5,6;7,8,9]
[V D]=eigs(A);

%2_1.m
arg=input('Input argument:');  %��ʾ����arg����
total=0;detail=0;
%if��俪ʼ
if(arg==1)
    %���for��俪ʼ
    for i=1:1:5
        total=total+1;
        %�ڲ�for��俪ʼ
        for j=0:0.1:1
            detail=detail+total;
         %�ڲ�for������
        end
   %���for������
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

