% Read the image and convert to uint8
img = imread('images/binary.png');

% Convert the image to double for applying the geometric mean filter
img_double = double(img);
% Add Gaussian noise
img_noisy = imnoise(uint8(img), 'gaussian', 0, 0.1);

% Apply geometric mean filter
[R, C,~] = size(img_noisy)
b = zeros(R, C);

for i = 2:R-1
    for j = 2:C-1
        % Extract the 3x3 neighborhood
        filter = img_noisy(i-1:i+1, j-1:j+1);
        
        % Calculate the product of all elements in the filter
        mul = prod(filter(:));
        
        % Calculate the geometric mean
        b(i, j) = mul ^ (1/9);
    end
end

% Convert the resulting image to uint8 for display
b = uint8(b);

% Display the original noisy image and the resulting image
figure;
subplot(1, 2, 1); imshow(img_noisy); title('Noisy Image');
subplot(1, 2, 2); imshow(b); title('Geometric Mean Filtered Image');
