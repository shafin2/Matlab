
img = double(rgb2gray(imread("./images/saltnpepper.png")));
filter = ones(3);

output = my_filter(img,filter);
imshow(uint8(output));


% Code will remain same as our generic convolution code change one line
% only for better understanding compare it with convolution code
function output_image = my_filter(input_image, kernel)
  [rows, cols] = size(input_image);
  [k_rows, k_cols] = size(kernel);
  pad_size = floor([k_rows k_cols] / 2);
  padded_image = padarray(input_image, pad_size, 'both');
  output_image = zeros(rows, cols);
  for i = 1:rows
    for j = 1:cols
      image_window = padded_image(i:i+k_rows-1, j:j+k_cols-1);
      
      new = reshape(image_window, 1, []);
      % Change following line only
      value = max(new);
      %value = min(new);
      %value = median(new);
      
      output_image(i, j) = value;
    end
  end
end