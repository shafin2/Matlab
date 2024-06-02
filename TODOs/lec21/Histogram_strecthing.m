addpath('../../GenericCode/')


I = rgb2gray(imread('images\img.png'));

figure, imhist(I), ylim('auto'), title ('Original histogram');

I2 = imadjust(I);

figure, imhist(I2),ylim('auto'),
title ('Strectched histogram');