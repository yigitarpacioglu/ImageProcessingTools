% Gray level Slicing

function outimg4 = graylevelslicing(inimg,bP,fP,rL)


%beginingPoint : bP,
%finishPoint   : fP, 
%resultLevel   : rL,


outimg4=double(inimg);
[x,y]=size(outimg4);

for x=1:1:x            
    for y=1:1:y         
        if((outimg4(x,y)>bP) && (outimg4(x,y)<fP))
            outimg4(x,y)=rL;
        else
            outimg4(x,y)=inimg(x,y);
        end
    end
end


figure 
subplot(1,2,1);
imshow(uint8(inimg));title('Original Image');
subplot(1,2,2);
imshow(uint8(outimg4));title('GrayLevelSliced Image');
end



        