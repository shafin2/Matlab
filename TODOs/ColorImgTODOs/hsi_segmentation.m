% Read the image and normalize pixel values to [0, 1]
img = im2double(imread("images/download.jpg"));
[R, C, ~] = size(img);

% Initialize H, S, I channels
H = zeros(R, C);
S = zeros(R, C);
I = zeros(R, C);

% Extract RGB channels
R_channel = img(:,:,1);
G_channel = img(:,:,2);
B_channel = img(:,:,3);

% Calculate Intensity (I)
I = (R_channel + G_channel + B_channel) / 3;

% Calculate Saturation (S)
min_rgb = min(min(R_channel, G_channel), B_channel);
S = 1 - (3 ./ (R_channel + G_channel + B_channel + eps)) .* min_rgb;

% Calculate Hue (H)
numerator = 0.5 * ((R_channel - G_channel) + (R_channel - B_channel));
denominator = sqrt((R_channel - G_channel).^2 + (R_channel - B_channel) .* (G_channel - B_channel)) + eps;
theta = acos(numerator ./ denominator);
H(B_channel <= G_channel) = theta(B_channel <= G_channel);
H(B_channel > G_channel) = 2 * pi - theta(B_channel > G_channel);
H = H / (2 * pi);  % Normalize to [0, 1]

% Initialize output image for pure red segmentation
output_img = zeros(R, C, 3);

% Define thresholds for pure red in HSI space
hue_threshold = 0.05;   % Hue close to 0 (pure red)
sat_threshold = 0.5;    % High saturation
intensity_min = 0.1;    % Minimum intensity
intensity_max = 0.9;    % Maximum intensity

% Segment pure red based on HSI thresholds
for i = 1:R
    for j = 1:C
        if (H(i, j) == 0 ) && (S(i, j) == 1)
            output_img(i, j, 1) = R_channel(i, j);
            output_img(i, j, 2) = G_channel(i, j);
            output_img(i, j, 3) = B_channel(i, j);
        else
            % Set non-red pixels to gray
            output_img(i, j, 1) = 0.5;
            output_img(i, j, 2) = 0.5;
            output_img(i, j, 3) = 0.5;
        end
    end
end

% Display the segmented image
imshow(output_img);
title('HSI Segmentation of Pure Red Color');
