function outimg1 = padImage (inimg,nrp,ncp  )
% e.g. %padImage (img,100,100 )
    [nr,nc]=size(inimg);   

    for i=1:nc
    
    inimg(1:((nr - nrp)/2),i) = 0;
    
    inimg(((nr + nrp)/2) : nr,i) = 0;
    
    end   
    
    inimg((nr - nrp)/2:(nr + nrp)/2 ,1:(nc-ncp)/2) = 0;
    
    inimg((nr - nrp)/2:(nr + nrp)/2 ,(nc+ncp)/2:nc ) = 0;      
    
    figure
    imshow(inimg);title('Padded Image')
    outimg1 = inimg;