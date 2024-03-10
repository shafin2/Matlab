img = double(rgb2gray(imread("img.jpeg")));
[r,c] = size(img);
B=zeros(r,c);
for i=1:r
    for j=1:c
        B(i,j) = 255 - img(i,j);
        %change above Equation only
        % B(i,j) = img(i,j) + 100;
        % B(i,j) = img(i,j) - 100;
        % B(i,j) = 2*img(i,j) + 10;
        % S = 255 -r (For negative)
    end
end

imshow(uint8(B));