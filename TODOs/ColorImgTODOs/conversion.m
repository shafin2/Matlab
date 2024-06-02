img = zeros(100,100,3);
img(:,:,1)=0;
img(:,:,2)=1;
img(:,:,3)=0;

figure; imshow(img);
r= img(:,:,1);

g= img(:,:,2);

b= img(:,:,3);
i = (r+g+b)/3;

imshow(i);

