img = double(rgb2gray(imread("./images/a.png")));
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
           r1_left_per =1;
           r1_right_per =1;
           r2_left_per =1;
           r2_right_per =1;
           up_per = 1;
           down_per =1;
           if output_matrix(2)-n3 ~= 0
            r1_left_per = (output_matrix(2)-n3);
            r1_right_per = 1 - r1_left_per;
           end
           if output_matrix(1) -n1 ~= 0
            up_per = (output_matrix(1) -n1);
            down_per = 1 - up_per;
           end

           m1 = ((img(n1,n3)*r1_left_per)+(img(n1,n4)*r1_right_per));
           m2 = ((img(n2,n3)*r2_right_per)+(img(n2,n4)*r1_right_per));
           value = round(((m1*up_per)+(m2*down_per)));
           B(i,j) = value;
        end
    end
end

imshow(uint8(B));
