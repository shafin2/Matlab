A = zeros(500,500);
cx = 250; 
cy = 250;
rad = 200;

for i = 1:500 
    for j = 1:500
        if sqrt((i - cx)^2 + (j - cy)^2) <= rad
            A(i,j) = 1;
        end
    end
end

imshow(A);
