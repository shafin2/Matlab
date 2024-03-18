% import convultion/average code 
addpath('../../GenericCode/')

img = double(rgb2gray(imread("./images/a.jpeg")));

% identity
% filter = [0 0 0; 0 1 0; 0 0 0];

% edge detection
% filter = [-1 -1 -1; -1 8 -1;-1 -1 -1];

% sharpen
filter = [0 -1 0; -1 5 -1; 0 -1 0];

% https://en.wikipedia.org/wiki/Kernel_%28image_processing%29

output = my_convolution(img,filter);

imshow(uint8(output));
