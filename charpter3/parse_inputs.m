function [ A,map,x1,x2,y1,y2 ] = parse_inputs( varargin )
%PARSE_INPUTS 此处显示有关此函数的摘要
%this is analyze input parameters number and function of validation
%parse_inputs
%A -input graph,RGB graph(3D),gray graph(2D),or index graph(X)
%map -index graph color palette (:,3)
%[x1,x2] -parameters group one ,curve two turn dot 's x-axis
%[y1,y2] -parameters group two , curve two turn dot's y-axis
%first build a full map variable,avoid  future call isempty(map) occur error
map=[];
%iptchecknargin(low,high,num_inputs,func_name) check input parameter number
%whether conform to demand.then num_inputs included input parameters number
%whether between low to high,if not in range,then give a formatting error
%information
iptchecknargin(3,4,nargin,mfilename);
%iptcheckinput(A,classes,attributes,func_name,var_name,arg_pos) check
%matrix A element whether included method list.If exist element not belong
%method,then give a formatting error information.
iptcheckinput(varargin{1},...
    {'uint8','uint16','int16','double'},...
    {'real','nonsparse'},mfilename,'I,X or RGB',1);

%with parameters number difficult,respectively confirm corresponding
%return_value
switch nargin
    case 3  
        A=varargin{1};
        x1=varargin{2}{1};
        x2=varargin{2}{2};
        y1=varargin{3}{1};
        y2=varargin{3}{2};
    case 4
        A=varargin{1};
        map=varargin{2};
        x1=varargin{2}{1};
        x2=varargin{2}{2};
        y1=varargin{3}{1};
        y2=varargin{3}{2};
end
%detection input parameters effectiveness
%detection RGB group
if (ndims(A)==3)&&(size(A,3)~=3)
    msg=sprintf('%s:true color graph should use a M-N-3 dimensionality array',...
        upper(mfilename));
    eid=sprintf('Images:%s:trueColorRgbImageMustBeMbyNby3',mfilename);
    error(eid,'%s',msg);
end
if ~isempty(map)
    %check pallet
    if(size(map,2)~=3) || ndims(map) >2
        msg1=sprintf('%s:input pallet should is matrix',...
            upper(mfilename));
        msg2='and have three rows';
        eid=sprintf('Images:%s:inColormapMustBe2Dwith3Cols',mfilename);
        error(eid,'%s %s',msg1,msg2);
    elseif(min(map(:))<0)||(max(map(:))>1)
        msg1=sprintf('%s:the intensity of each component in pallet',upper(mfilename));
        msg2='should in between 0 to 1';
        eid=sprintf('Images:%s:colormapValsMustBe0t01',mfilename);
        error(eid,'%s %s',msg1,msg2);
    end
end
%will int16 method matrix change to uint16 method
if isa(A,'int16')
    A=int16touint16(A);
end

end

