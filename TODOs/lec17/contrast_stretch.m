

img  = double(rgb2gray(imread("images\a.jpeg")));

min_value = min(min(img));
max_value = max(max(img));

diff = max_value - min_value;
L = 128;

ouput_img = ((img-min_value)*(L-1))/diff;

imshow(uint8(ouput_img))