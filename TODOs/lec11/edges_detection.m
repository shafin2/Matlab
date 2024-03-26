% import convultion/average code 
addpath('../../GenericCode/')

img = double(rgb2gray(imread("./images/img.png")));

% For Horizontal edges (1st order derivative)
% filter = [-1;1];

% For Vertical edges (1st order derivative)
% filter = [-1 1];

% For Horizontal edges (2nd order derivative)
% filter = [1;-2;1];

% For Vertical edges (2nd order derivative)
% filter = [1 -2 1];


% Laplacian filter
% Find both horizontal and vertical lines
% filter = [0 -1 0; -1 4 -1; 0 -1 0];
% filter = [0 1 0; 1 -4 1; 0 1 0];

% Find diagonal lines
% filter = [-1 0 -1; 0 4 0; -1 0 -1];

% Find diagonal and H,V bothlines
%filter = [-1 -1 -1; -1 8 -1; -1 -1 -1];

output = my_convolution(img,filter);

imshow(uint8(img));