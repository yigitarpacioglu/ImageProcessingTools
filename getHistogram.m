% This function manually calculates histogram of a grayscale image.

function [f]=getHistogram(image)

f=zeros(256,1);

x=0:255; 

[r,c]=size(image);

for i=1:r
    for j=1:c
        num=image(i,j);
        f(num+1)=f(num+1)+1;
    end
end     

figure 
bar(x,f); 
grid on;
ylabel('number of pixels with intensity levels');
xlabel('intensity levels'); 
title('HISTOGRAM OF THE IMAGE')