% This function returns projection center of image

function outimg = projectioncenter(image)

img_area=0;
[r,c]=size(image);
[hproj,vproj]=proj(image);
x=0;
y=0;
for i=1:r
    if hproj(1,i) ~= 0
        img_area = img_area + hproj(1,i);
    end
end
disp(img_area)

for i=1:r
    x=x+i*hproj(1,i);
    centx=round(x/img_area);
end
for j=1:c
    y=y+j*vproj(1,j);
    centy=round(y/img_area);
end
outimg=image;
for i=(centx-5):(centx+5)
    for j=(centy-5):(centy+5)
        outimg(i,j)=0;
    end
end
figure(3)
imshow(outimg)