% Read the base and input images
base_img = imread("images\original.png");
input_img = imread("images\input.png");


% Use cpselect to interactively select points on the base image
[fixed_points_base, moving_points_input] = cpselect(base_img, input_img, 'Wait', true);  % Capture only fixed points (base image)



% Now you have the fixed_points_base and moving_points_input for registration

% Estimate transformation using cp2tform
tform = cp2tform(fixed_points_base, moving_points_input, 'affine');  % Adjust for desired transformation type (e.g., 'similarity')

% Register the input image based on the estimated transformation
registered_img = imtransform(input_img, tform);

% Show the registered image
figure;
imshow(registered_img); title("Registered Image");

