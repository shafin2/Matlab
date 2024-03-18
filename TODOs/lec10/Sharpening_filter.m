% import convultion/average code 
addpath('../../GenericCode/')

img = double(rgb2gray(imread("./images/img.png")));

figure; imshow(uint8(img));

% Example 1 : brighten then image
% filter = ones(3,3);

% Example 2 : identeity
% filter = [0 0 0; 0 1 0; 0 0 0];

% Example 3 : (Slight Blur)
% filter = 1/13*[0 0 1 0 0; 0 1 1 1 0; 1 1 1 1 1; 0 1 1 1 0; 0 0 1 0 0];

% Example 4 : (Motion Blur)
% filter = 1/9*eye(9);
% eye create identity matrix

% Example 5 : (Edges)
% filter = [0 0 -1 0 0; 0 0 -1 0 0; 0 0 2 0 0; 0 0 0 0 0; 0 0 0 0 0];

% Example 6 : (Edges)
% filter = [0 0 -1 0 0; 0 0 -1 0 0; 0 0 4 0 0; 0 0 -1 0 0; 0 0 -1 0 0];

% Example 7 : (Edges)
% filter = [-1 -1 -1; -1 8 -1; -1 -1 -1];

% Example 8 : (sharp img)
% filter = [-1 -1 -1; -1 9 -1; -1 -1 -1];

% Example 9 : (Emboss)
filter = [-1 -1 0; -1 0 1; 0 1 1];

% sharpen
%filter = [0 -1 0; -1 5 -1; 0 -1 0];

% https://en.wikipedia.org/wiki/Kernel_%28image_processing%29

output = my_convolution(img,filter);

figure; imshow(uint8(output));
