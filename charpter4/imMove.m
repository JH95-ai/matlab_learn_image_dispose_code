function I_out=imMove(I,Tx,Ty)
%translation
%input:I - input graph
%      Tx- horizontal translation
%      Ty- vertical translation
%output: I_out -output graph
tform=maketform('affine',[1 0 0;0 1 0;Tx Ty 1]);
%define translation exchange matrix
I_out=imtransform(I,tform,'XData',[1 size(I,2)],'YData',[1 size(I,1)]);%graph translation
subplot(1,2,1),imshow(I);
title('Ô­Í¼Ïñ');
subplot(1,2,2),imshow(I_out);
title('Æ½ÒÆÍ¼Ïñ');
