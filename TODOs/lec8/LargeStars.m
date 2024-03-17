% import convultion/average code 
addpath('../../GenericCode/')

% Define Img
img = double(rgb2gray(imread('./galaxy.png')));
% imshow(uint8(img))

% increase this size to get rid of small stars
size = 10;
filter = (1/(size*size))*ones(size,size);

% Blur or try to remove small stars
blur_img = my_convolution(img, filter);
% imshow(uint8(blur_img))

% creates a binary image of that mask, 0.1 is threshold value on which we want the values to be white or black
binary_img = imbinarize(uint8(blur_img), 0.1);
%imshow(binary_img);

% Apply binary to original img, means multiply pixels so whose value is 0
% will show complete black and other will same 
final_image = apply_mask(img,binary_img);
imshow(uint8(final_image));


function result = apply_mask(image, mask)
   [r, c] = size(image);
   img = zeros(r, c);
   for i = 1:r
      for j = 1:c
         img(i, j) = image(i , j) * mask(i, j);
      end
   end
    result = img;
end
