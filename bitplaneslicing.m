function outimg5 = bitplaneslicing(inimg,bpN)



itemp = inimg(:,:,1);
[x,y]= size(itemp);         % get the dimensions of image
outimg5 = zeros(x,y,8);           % pre allocate a variable to store 8 bit planes of the image
for k = 1:8
    for i = 1:x
        for j = 1:y
            outimg5(i,j,k) = bitget(itemp(i,j),k);    %get kth bit from each pixel 
        end
     end
    
end
figure 
subplot(1,2,1);
imshow(uint8(itemp));
title('Original Image');    %display original image
subplot(1,2,2);
imshow(outimg5(:,:,bpN+1));
title(sprintf('Bit Plane %d',(bpN)));
end
    