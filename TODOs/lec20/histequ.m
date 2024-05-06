img = (rgb2gray(imread('images/a.jpeg')));
[R,C] =size(img);

myhist = zeros(255,1);
for i=1:R
    for j=1:C
        myhist(img(i,j)+1) = myhist(img(i,j)+1) + 1;
    end
end

pdf = myhist/(R*C);

sum = 0;
cdf = zeros(255,1);
for i=1:255
    sum = sum + pdf(i); 
    cdf(i) = sum; 
end

lot= round(cdf*255);


equalized_img = uint8(zeros(R, C));
for i=1:R
    for j=1:C
        equalized_img(i,j) = lot(img(i,j)+1);
    end
end

imshow((equalized_img))
