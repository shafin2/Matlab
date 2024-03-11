A = double(rgb2gray(imread('n.jpeg')));
[R, C] = size(A);

B = zeros(R, C);

for i = 2:R-1
    for j = 2:C-1
        temp = A(i-1:i+1, j-1:j+1);  
        mysum = sum(temp(:));      
        myfinal = mysum / 9;       
        B(i, j) = myfinal;          
    end
end

imshow(uint8(B));
