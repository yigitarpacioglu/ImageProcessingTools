% This function realize histogram equalization of given a grayscale image
% withouy built-in function

function [outimage]= histogramEqualization (image)

[r,c]=size(image);
outimage=uint8(zeros(r,c));
pixels=r*c;
f=zeros(256,1);
pdf=zeros(256,1);
cdf=zeros(256,1);
cum=zeros(256,1);
out=zeros(256,1);

for i=1:r
    for j=1:c
        num=image(i,j);
        f(num+1)=f(num+1)+1;
        pdf(num+1)=f(num+1)/pixels;
    end
end
K=0;
L=255;

for i=1:size(pdf)
 K=K+f(i);
 cum(i)=K;
 cdf(i)=cum(i)/pixels;
 out(i)=round(cdf(i)*L);
 
end

for i = 1:r
    for j = 1:c
        outimage(i,j)=out(image(i,j)+1);
    end
end


figure 
subplot(1,2,1); imshow(uint8(image));title('Original Image')
subplot(1,2,2); imshow(outimage);title('Equalized Image')



end