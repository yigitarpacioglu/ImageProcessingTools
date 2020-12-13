% This function returns center of image. If it is desired uncomment last
% part of code to leave a point to center.

function [outimg,centx,centy]=center(img)

[NoR,NoC]=size(img);
x=0;
y=0;

for i=1:NoR
    for j=1:NoC   
        if img(i,j)==1
            x=x+i;
            y=y+j;                         
        end        
    end
end

area=desiredarea(img);

centx=round(x/area);
centy=round(y/area);
DispCentCoord=[centx;centy];
display(DispCentCoord);

% To show center of image, this are should be opened
outimg=img;
% 
% 
% for i=centx-2:centx+2
%     for j=centy-2:centy+2
%         outimg(i,j)=0;
%     end
% end


end
   
   
