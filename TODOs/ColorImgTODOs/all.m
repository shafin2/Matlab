
%todo 1
img = zeros(100,100,3);
img(:,:,1)=0;
img(:,:,2)=1;
img(:,:,3)=0;
figure; imshow(1-img);
% 
% img(1:50,1:50,1) = 1;
% img(1:50,50:100,2) = 1;
% img(50:100,1:50,3) = 1;
% img(50:100,50:100,:) = 0.5;
% 
% imshow(img)

% check color image
 img = double(imread("./images/download.jpg"));
% 
%imshow(uint8(img));