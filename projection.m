% This function returns horizontal and vertical projection of an image.

function [hproj,vproj] = projection(image)

[r,c]=size(image);

%horizontal projection of binary image
hproj=zeros(1,r);
x=1:r;
y=1:c;

for i=1:r
    for j=1:c
        if (image(i,j)==1)
           hproj(1,i)=hproj(1,i)+1;           
        end
    end
end

%vertical projection of binary image
vproj=zeros(1,c);

for j=1:c
    for i=1:r
    
    
        if (image(i,j)==1)
           vproj(1,j)=vproj(1,j)+1;           
        end
    end
end
figure (2)
grid on;
subplot(1,2,1); bar(x,hproj(1,:));title('Horizontal Projection of Binary Image')
subplot(1,2,2); bar(y,vproj(1,:));title('Vertical Projection of Binary Image')
end
