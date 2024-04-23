% highboost masking is a technique used to enhance the edges in an image, its process is as follows:
% 1. Apply an averaging filter to the image to get a blurred image
% 2. Amplify the original image by a factor
% 3. Subtract the blurred image from the amplified image to get the edges
% 4. Add the edges to the original image to get the final image
% souce: ch 4 Image Enhancement, 4.3.3 sharpening filters, Digital Image Processing, Gonzalez, Woodss
function mySecondAssignment(filename, multifact)
  % import convultion/average code 
  % addpath('../../GenericCode/')
  % no need to import because my_convolution code is within the folder

  % Read the input image
  img = double(rgb2gray(imread(filename)));

  % Display the original image
  figure, imshow(uint8(img));
  title('Original Image');
  % save the original image
  imwrite(uint8(img), 'original_image.jpeg');

  % make averaging filter
  filter = (1/9)*ones(3,3);
  % apply averaging filter using our convolution code to get blur image
  blur_img = my_convolution(img,filter);
  % Display the blurred image
  figure, imshow(uint8(blur_img));
  title('Blurred Image');
  % save the blurred image
  imwrite(uint8(blur_img), 'blurred_image.jpeg');

  % make amplified image
  amplified_img = multifact*img;
  % Display the amplified image
  figure, imshow(uint8(amplified_img));
  title('Amplified Image');
  % save the amplified image
  imwrite(uint8(amplified_img), 'amplified_image.jpeg');
  
  % get edges by subtracting blur_img from original
  edges = amplified_img - blur_img;
  % Display the edges
  figure, imshow(uint8(edges));
  title('Edges');
  % save the edges
  imwrite(uint8(edges), 'edges_image.jpeg');

  % Get high-boost filter img
  highboost_img = img + edges;
  % Display the final img
  figure, imshow(uint8(highboost_img));
  title('Output image');
  % save the final image
  imwrite(uint8(highboost_img), 'highboost_masked_image.bmp');
end