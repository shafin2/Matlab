img = double(rgb2gray(imread("./images/a.jpeg")));
[R, C] = size(img);
% for scaling
a0 = 2;
b1 = 3; 
% other should be zero besides a0 & b1 for scaling

% for translation
a2 = 0; 
b2 = 0; 
% a0 & b1 set to 1, set a2 and b2, other should be zero

% for shear
a1 = 0;
b0 = 0;
% a0 & b1 set to 1, set a1 and b0, other should be zero

constant_matrix = [a0 a1 a2; b0 b1 b2; 0 0 1];

if a0 ~= 0 && b1 ~= 0
    B = zeros(R*a0, C*b1);
end

if a2 ~= 0 && b2 ~= 0
    B = zeros(R+a0, C+b1);
end

temp_a1=abs(ceil(a1));
temp_b0=abs(ceil(b1));
if a1 ~= 0 || b0 ~= 0
    B = zeros(R*temp_b0,C*temp_a1);
    if temp_a1 == 0
        B = zeros(R*temp_b0,C);
    end
    if temp_b0 == 0
        B = zeros(R,C*temp_a1);
    end
end


for i = 1:R
    for j = 1:C
        loc_matrix = [i; j; 1];
        output_matrix = constant_matrix*loc_matrix;
        a = round(output_matrix(1));
        b = round(output_matrix(2));
        if a>0 && b>0
           B(a,b) = img(i,j);
        end
    end
end

imshow(uint8(B));
