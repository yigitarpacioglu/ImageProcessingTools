function outimg1 = sampleImage(inimg,R)


[x,y]=size(inimg);


outimg1=zeros(100);
for i=1:R:x
   for j=1:R:y
     for k=0:R-1
         for l=0:R-1
             outimg1(i+k,j+l)=inimg(i,j); 
         end
      end
   end
end

figure (1)

subplot(1,2,1);
imshow(uint8(inimg));title('Original Image');
subplot(1,2,2);
imshow(uint8(outimg1));title(sprintf('For Sampling Ratio=%d, Sampled Image', R));
end