% import convultion/average code 
addpath('../../GenericCode/')

img = double(rgb2gray(imread("./images/a.jpeg")));

filter = (1/9)*ones(3,3);

blur_img = my_convolution(img,filter);

edges = img - blur_img;

sharp_img = img + edges;

%imshow(uint8(blur_img));
%imshow(uint8(edges));
imshow(uint8(sharp_img));

