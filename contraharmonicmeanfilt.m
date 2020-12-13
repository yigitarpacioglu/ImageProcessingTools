
function outimg = contraharmonicmeanfilt (inimg)

dblinimg=im2double(inimg);

p=0;
q=0;
[x, y]=size(dblinimg);


for i=1:x
    for j=1:y
        for m=-3:3
            for n=-3:3
                if (i+m>0 && i+m<x && j+n>0 && j+n<y && m+3>0 &&m+3<x && n+3>0 && n+3<y) 
                    
                    f1=(dblinimg(i+m,j+n)).^3;                   
                    f2=(dblinimg(i+m,j+n)).^2;
                    
                    p=p+f1;                             
                    q=q+f2;
                
                end
            end
        end
        
      outimg(i,j)=(p/q);
      p=0;
      q=0;
   
    end
end

figure
subplot(1,2,1);
imshow(uint8(inimg));title('Original Image');
subplot(1,2,2);
imshow(uint8(outimg));title('Contra-harmonic Filtered Image');
end