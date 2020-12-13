% This function returns binary image of given grayscale image

function [outimage] = bin(image,threshold)
outimage = image;
outimage(image > threshold) = 1;
outimage(image <= threshold) = 0;
figure 
subplot(1,2,1);
imshow(outimage),title('Binary Image')
end