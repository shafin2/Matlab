img = (rgb2gray(imread('images/original.jpeg')));
[R,C] =size(img);
myhist = zeros(255,1);
size(myhist)
for i=1:R
    for j=1:C
        myhist(img(i,j)+1) = myhist(img(i,j)+1) + 1;
    end
end

figure; plot(myhist);
xlim([0, 255]);
ylim([0,max(myhist)]);
figure; imhist(img);