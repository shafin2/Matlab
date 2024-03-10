A = zeros(500,500);
cx = 250; 
cy = 250;
rad = 200;

for i = 1:500 
    for j = 1:500
        if abs(cx-i)+abs(cy-j) <= rad
            A(i,j) = 1;
        end
    end
end

imshow(A);
