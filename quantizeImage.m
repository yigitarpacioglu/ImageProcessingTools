function [outimg2] = quantizeImage(inimg,Q)

%Q : Quantization levels

[x,y]=size(inimg);


I=inimg/255;


outimg2=zeros(100);
for i=1:y
 for j=1:x
  t=1/Q;
 for k=1:Q
    if(I(i,j)>t)
        outimg2(i,j)=t+1/Q;
    t=t+1/Q;
    end
 end
 end
 end



outimg2=uint8(255*outimg2);

figure (2)
subplot(1,2,1);
imshow(uint8(inimg));title('Original Image');
subplot(1,2,2);
imshow(uint8(outimg2));title(sprintf('For Quantizing Level=%d, Quantized Image', Q));
end
