% Read the image and normalize pixel values to [0, 1]
img = im2double(imread("images/download.jpg"));
[R, C, ~] = size(img);

% Initialize the output image
b = zeros(R, C, 3);

% Define a threshold for red detection
threshold = 0.1;  % You can adjust this value as needed

% Loop through each pixel
for i = 1:R
    for j = 1:C
        % Check if the pixel is approximately pure red
        if (img(i, j, 1) >= 1 - threshold && img(i, j, 2) <= threshold && img(i, j, 3) <= threshold)
            b(i, j, 1) = 1;  % Red channel
            b(i, j, 2) = 0;  % Green channel
            b(i, j, 3) = 0;  % Blue channel
        end
    end
end

% Display the segmented image
imshow(b);
title('Segmented Pure Red Color');
