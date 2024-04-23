
% Read the image
image = double(rgb2gray(imread('images\a.png')));
% Specify the desired output size (e.g., double the size)
output_size = size(image) * 20;

% Perform bilinear interpolation using imresize
resized_image = imresize(image, output_size, 'bilinear');

% Display the original and resized images
figure;
subplot(1, 2, 1);
imshow(uint8(image));
title('Original Image');

subplot(1, 2, 2);
imshow(uint8(resized_image));
title('Resized Image using Bilinear Interpolation');
