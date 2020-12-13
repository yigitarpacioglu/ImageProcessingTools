function outimg = cropImage (inimg,cropArray)

Size=size(inimg);

for i = cropArray(1):1:cropArray(2)
for j = cropArray(3):1:cropArray(4)
outimg(i+1-cropArray(1),j+1-cropArray(3))=inimg(i,j);
end
end

figure 
imshow(outimg);title(sprintf('Cropped Image'));
end