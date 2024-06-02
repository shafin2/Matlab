img = (rgb2gray(imread("./images/original.jpeg")));
[R,C] = size(img);
b = zeros(R,C,3);

for i = 1:R
    for j=1:C
        if img(i,j) > 120
            b(i,j,1) = 1;
            b(i,j,3) = 1;
        else
            b(i,j,2) = 1;
            b(i,j,3) = 1;
        end
    end
end


imshow(b);