% Read the image and normalize pixel values to [0, 1]
img = im2double(imread("images\download.jpg"));

[R,C,~] = size(img);
w = 0.5;
x = 0.5;
y = 0.5;
z = 0.5;

output_img = zeros(R, C, 3);

for i = 1:R
    for j = 1:C
        if (abs(x-img(i,j,1)) > w/2) || (abs(y-img(i,j,2)) > w/2) || (abs(z-img(i,j,3)) > w/2)
            output_img(i, j, 1) = 0.5;
            output_img(i, j, 2) = 0.5;
            output_img(i, j, 3) = 0.5;
        else
            output_img(i, j, 1) = img(i, j, 1);
            output_img(i, j, 2) = img(i, j, 2);
            output_img(i, j, 3) = img(i, j, 3);
        end
    end
end

imshow(output_img);