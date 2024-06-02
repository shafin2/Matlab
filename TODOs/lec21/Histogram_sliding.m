% import convultion/average code 
addpath('../../GenericCode/my_histeq')


I = imread('images\img.png');

figure, imhist(I), ylim('auto'), title ('Original histogram');

I2 = imadd(I, 50);

figure, imhist(I2), ylim('auto'),
title ('Sliding to the right by 50');

I3 = imsubtract(I,50);

figure, imhist(I3), ylim('auto'),
title ('Sliding to the left by 50');