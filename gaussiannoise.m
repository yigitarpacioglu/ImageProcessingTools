function outimg = gaussiannoise(inimg,gc)


outimg = double(inimg) + gc.*randn(size(inimg));

figure

subplot(1,2,1);
imshow(uint8(inimg));title('Original Image');
subplot(1,2,2);
imshow(outimg./255);title(sprintf('For Gaussian Coefficient =%d, Noisy Image', gc));
end