% This function rectangle object with “boundingbox” function for given
% binary image

function [outimage]=boundingbox(image)


[r,c]=size(image);
indA=1; indB=1;



for i=1:r
    for j=1:c
        if (image(i,j)==1)
            A(1,indA)=i;
            indA=indA+1;
        end
    end
end


for i=1:r
    for j=1:c
        if (image(i,j)==1)
            B(1,indB)=j;
            indB=indB+1;
        end
    end
end

A=sort(A);
sA = size(A,2);
rmin = A(1,1); 
rmax = A(1,sA);

B=sort(B);
sB = size(B,2);
cmin=B(1,1); cmax=B(1,sB);

bbx=zeros(2);
bbx(1,1)=rmin;
bbx(1,2)=rmax;
bbx(2,1)=cmin;
bbx(2,2)=cmax;

display(bbx);

   outimage=image;
   for i=1:size(image,1)
     for j=1:size(image,2)
           if i==bbx(1,1) || i==bbx(1,2)
               for k=bbx(2,1):bbx(2,2)
                   outimage(i,k)=1;
                  
               end
           end
     end
   end
 
for i=1:size(image,1)
     for j=1:size(image,2)
           if j==bbx(2,1) || j==bbx(2,2)
               for k=bbx(1,1):bbx(1,2)
                   outimage(k,j)=1;
                  
               end
           end
     end
end
 

figure
title('Bounding Box')
 imshow(outimage)

end

