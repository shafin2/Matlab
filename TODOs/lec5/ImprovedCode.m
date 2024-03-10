cx = 250; 
cy = 250;
rad = 200;

[X, Y] = meshgrid(1:500, 1:500);  % Creates matrices for x and y coordinates
distance = sqrt((X - cx).^2 + (Y - cy).^2);  % Calculate distances efficiently
A = distance <= rad;  % Set elements within radius to 1

imshow(A);
