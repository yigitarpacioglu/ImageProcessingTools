function outimg3 = powerlawtransform(inimg, fp)

r = double(inimg)/255;              % normalise the image

c = 1;              % constant;          
% to make image dark take value of gamma > 1, to make image bright take vlue of gamma < 1
outimg3 = c*(r).^fp;   % formula to implement power law transformation

figure 
subplot(1,2,1);
imshow(uint8(inimg)),title('Original Image');
subplot(1,2,2);

imshow(outimg3);title(sprintf('For Float Power=%.1f Transformed Image',fp))
end