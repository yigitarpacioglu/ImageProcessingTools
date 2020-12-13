% This function computes compactness of object in binary image with given
% Perimeter and Area as an input. 
% P: Perimeter
% A: Area

function [compactness]=compactness(image)

A=desiredarea3(image);
boundaries=hpf(image);         % User defined laplacian filter is created for assistancy
                             % to find boundaries of object.
P=desiredarea3(boundaries);
compactness=4*pi*A/(P^2);    % Compactness equation


end
