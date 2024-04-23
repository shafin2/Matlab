function output_image = my_convolution(input_image, kernel)
  % get the size of the input image
  [rows, cols] = size(input_image);
  % Get the size of the kernel
  [k_rows, k_cols] = size(kernel);
  pad_size = floor([k_rows k_cols] / 2);
  % Pad size for add padding like if 3x3 filter then 1 col and 1 row should
  % be padded as 3/2 = 1.5 = 1

  % Pad the input image with zeros to avoid boundary effects
  padded_image = padarray(input_image, pad_size, 'both');
  % padarray is built function it take img, pad size and direction, from
  % both mean top,bottom,left right. you can see more details on https://www.mathworks.com/help/images/ref/padarray.html
  
  output_image = zeros(rows, cols);
  for i = 1:rows
    for j = 1:cols
      % Extract image neighborhood based on kernel size and padding
      image_window = padded_image(i:i+k_rows-1, j:j+k_cols-1);
      % Perform element-wise multiplication and summation (dot product)
      % in matlab .* do element wise multiplication
      product = image_window .* kernel;
      % reshape it to 1D array and sum it
      new = reshape(product, 1, []);
      output_image(i, j) = sum(new);
    end
  end
end