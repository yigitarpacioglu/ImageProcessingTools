% This function returns total pixel number in the grayscale image without built in function.

function [imagepixels] = area (image)

[r,c]=size(image);
imagepixels=0;

for i=1:r
    for j=1:c     
        if image(i,j)==1
           
            imagepixels=imagepixels+1;
            
        end
    end
end
display(imagepixels)
end
