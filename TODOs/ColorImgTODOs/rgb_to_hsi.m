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
H = H / (2 * pi);

% Display the H, S, I images
figure; imshow(H); title('Hue');
figure; imshow(S); title('Saturation');
figure; imshow(I); title('Intensity');
