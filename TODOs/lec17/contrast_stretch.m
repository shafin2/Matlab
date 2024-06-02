

img  = (rgb2gray(imread("images\a.jpeg")));
figure, imhist((img)), ylim('auto'), title ('Original histogram');
[R,C] = size(img)
min_value = min(min(img))
max_value = max(max(img))

diff = max_value - min_value;
L = 256;

%ouput_img = ((img-min_value)*(L-1))./diff;
ouput_img = zeros(R,C);
for i = 1:R
   for j = 1:C
       ouput_img(i,j) = round((ouput_img(i,j)-min_value)*(L-1))/diff;
   end
end

size(ouput_img)
%imshow(uint8(ouput_img))
figure, imhist((ouput_img)), ylim('auto'), title ('Strectch histogram');
