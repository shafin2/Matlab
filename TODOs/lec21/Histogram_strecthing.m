% Create a random grayscale image (3-bit image, values from 0 to 7)
img = randi([0, 7], 100, 100);

% Initialize output image
[R, C] = size(img);
output_img = zeros(R, C);

% Get the minimum and maximum intensity values
min_val = min(img(:));
max_val = max(img(:));

% Loop through each pixel and apply the stretching
for i = 1:R
    for j = 1:C
        % Apply stretching formula with scaling to 8-bit gray levels
        output_img(i, j) = ((img(i, j) - min_val) / (max_val - min_val)) * 255;
    end
end

% Normalize the output to [0, 1] for display purposes
output_img = output_img / 255;

% Display histograms before and after the stretching
figure;
subplot(1, 2, 1); imhist(img, 8); xlim([0 7]); ylim('auto'); title('Original Histogram (3-bit)');
subplot(1, 2, 2); imhist(output_img, 256); xlim([0 1]); ylim('auto'); title('Stretched Histogram (8-bit)');
