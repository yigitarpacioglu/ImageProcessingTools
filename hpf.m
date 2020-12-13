% Edge detection filter for image

function [outimage] = hpf(image)

outimage=image;
mask2=[1, 1, 1;1, -8, 1;1, 1, 1];

for i=2:size(image, 1)-1
    for j=2:size(image, 2)-1
  
        %multiplying mask value with the corresponding image pixel value 
        neighbour_matrix=mask2.*image(i-1:i+1, j-1:j+1);  
        avg_value=sum(neighbour_matrix(:)); 
        outimage(i, j)=avg_value; 
    end 
end 

 figure , imshow(out), title('Filtered Image'); 

end