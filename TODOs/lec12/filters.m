% import convultion/average code 
addpath('../../GenericCode/')

img = double(rgb2gray(imread("./images/img.png")));

%2d filter which can extract only one type of edges either H or V

% vertical by 2D mask
% filter = [-1 0 1;-1 0 1;-1 0 1];

% horizontal by 2D mask
% filter = [1 1 1; -2 -2 -2;1 1 1];

% horizontal by 2D mask
% filter = [1 0 1; -2 0 -2; 1 0 1];

% horizontal by 2D mask
% filter = [0 -1 0; 1 -2 1; 0 1 0];

% Sobel filters

% V
% filter = [-1 0 1;-2 0 2; -1 0 1]

% H
 filter = [-1 -2 -1; 0 0 0; 1 2 1]

output = my_convolution(img,filter);

imshow(uint8(output));