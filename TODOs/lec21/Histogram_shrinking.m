% Create a random grayscale image (8-bit image)
img = randi([0, 255], 100, 100);

% Initialize output image
[R, C] = size(img);
output_img = zeros(R, C);

% Define the new intensity range
new_min = 50;
new_max = 150;

% Get the minimum and maximum intensity values
min_val = min(img(:));
max_val = max(img(:));

% Loop through each pixel and apply the shrinking
for i = 1:R
    for j = 1:C
        % Apply shrinking formula
        output_img(i, j) = (((img(i, j) - min_val) / (max_val - min_val)) * (new_max - new_min)) + new_min;
    end
end

% Display histograms before and after the shrinking
figure;
subplot(1, 2, 1); imhist(uint8(img), 256); xlim([0 255]); ylim('auto'); title('Original Histogram (8-bit)');
subplot(1, 2, 2); imhist(uint8(output_img), 256); xlim([0 255]); ylim('auto'); title('Shrunk Histogram');
