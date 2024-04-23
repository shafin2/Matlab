% Read the image
img = double(rgb2gray(imread('images\input.png')));

% Explanation:
% 1. imread('images\input.png'): Reads the image from the specified path.
% 2. rgb2gray(img): Converts the image to grayscale if it's a color image.
% 3. double(img): Converts the image data type to double for performing FFT.

% Compute 2D FFT
imgFFT = fft2(img);

% Explanation:
% 1. fft2(img): Performs the 2D Fast Fourier Transform on the image, resulting 
%    in the frequency domain representation (complex-valued).

% %imshow(angle(fftshift(imgFFT)),[]);  % Commented out visualization of phase

% Explanation (commented line):
% This line calculates and displays the phase information of the frequency domain 
% using angle(), fftshift(), and imshow(). It's currently commented out.

% Combined approach for magnitude (logarithmic scale) with zero-frequency shift
S = fftshift(log(1 + abs(imgFFT)));

% Explanation:
% 1. abs(imgFFT): Calculates the absolute value (magnitude) of the complex-valued FFT.
% 2. log(1 + ...): Applies a logarithmic scale with an ogffset of 1 to avoid issues 
%    with log of zero.
% 3. fftshift( ... ): Shifts the zero-frequency component of the magnitude to the center.
% 4. The result is stored in variable S, representing the frequency domain magnitude 
%    (logarithmic scale) with the zero-frequency component centered.

% imshow(S, []);  % Commented out displaying with default colormap
imshow(S, [min(S(:)) max(S(:))]);
colormap('jet');

% Explanation:
% 1. imshow(S, [min(S(:)) max(S(:))]): Displays the magnitude (logarithmic scale) 
%    using imshow(). The color range is set to minimum and maximum values in S 
%    to ensure proper scaling.
% 2. colormap('jet'): Sets the colormap to 'jet' (rainbow) for better visualization 
%    of the magnitude variations.

% Invert FFT for completeness (optional)
img_reconstructed = ifft2(imgFFT);

% Explanation (commented line):
% This line performs the inverse FFT on the frequency domain representation (imgFFT) 
% to reconstruct the image in the spatial domain (optional for completeness). 
% It's currently commented out.
