function outimg=uniformnoise(inimg,ur)
% Resime ur(uniform ratio) ile noise eklenmesi 

[x,y]=size(inimg);


m = -ur;
n = ur;

matrix_uniform = m + (n-m)*rand(x,y);
outimg = inimg + matrix_uniform;

figure (2)
subplot(1,2,1);
imshow(uint8(inimg));title('Original Image');
subplot(1,2,2);
imshow(outimg./255);title(sprintf('For ratio =%d, Noisy Image', ur));

end


