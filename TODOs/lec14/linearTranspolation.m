img = double(rgb2gray(imread("./images/binary.png")));
[R, C] = size(img);
% for scaling
a0 = 4;
b1 = 4; 
% other should be zero besides a0 & b1 for scaling

% for translation
a2 = 0; 
b2 = 0; 
% a0 & b1 set to 1, set a2 and b2, other should be zero

% for shear
a1 = 0;
b0 = 0;
% a0 & b1 set to 1, set a1 and b0, other should be zero
if a0 ~= 0 && b1 ~= 0
    B = zeros(R*a0, C*b1);
end

if a2 ~= 0 && b2 ~= 0
    B = zeros(R+a0, C+b1);
end

if a1 ~= 0 || b0 ~= 0
    B = zeros(R*a0,C*b1);
end
[r1,c1]=size(B);
constant_matrix = [a0 a1 a2; b0 b1 b2; 0 0 1];
inverse = inv(constant_matrix);
for i = 1:r1
    for j = 1:c1
        loc_matrix = [i; j; 1];
        output_matrix = inverse * loc_matrix;
        n1 = floor(output_matrix(1));
        n2 = ceil(output_matrix(1));
        n3 = floor(output_matrix(2));
        n4 = ceil(output_matrix(2));
        if n1>0 && n2>0 && n3>0 && n4>0 && n1<R && n2<R && n3<C && n4<C
           value = round((img(n1,n3)+img(n1,n4)+img(n2,n3)+img(n2,n4))/4);
           B(i,j) = value;
        end
    end
end

imshow(uint8(B));
