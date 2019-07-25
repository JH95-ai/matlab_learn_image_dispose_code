%example2_2.m
arg=input('Input argument:');
total=0;detail=0;
%switch sentence begin
switch arg
    %branch one
    case 1
        i=1;
        %outer layer while sentence begin
        while (i<=5)
            total=total +1;
            i=i+1
            j=1;
            %inter layer while sentence begin
            while(j<=2);
                detail=detail+total;
                j=j+0.1;
            %inter layer while sentence end
            end
        %outer layer while end
        end
    %branch two
    case 2
        total =0;
        detail=total;
    %branch others
    case others
        error('Invalid arguments');
%switch sentence end
end 
detail
            
            