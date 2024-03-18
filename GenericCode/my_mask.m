function result = my_mask(image, mask)
   [r, c] = size(image);
   img = zeros(r, c);
   for i = 1:r
      for j = 1:c
         img(i, j) = image(i , j) * mask(i, j);
      end
   end
    result = img;
end