function outimg=saltandpepper(inimg,P)

[x,y]=size(inimg);

PDF=255*P/100;
outimg = inimg;
Rmatrix = randi(x,y);
outimg(Rmatrix <=PDF/2) = 0; 
outimg(Rmatrix >PDF/2&Rmatrix<PDF) = 255; 


figure (4)
subplot(1,2,1);
imshow(uint8(inimg));title('Original Image');
subplot(1,2,2);
imshow(outimg./255);title('Noisy Image');
end