function equalized_img = my_histeq(img)
    % Get the size of the image
    [R, C] = size(img);

    % Determine maximum number of gray levels in the image
    max_level = double(max(img(:)));
    
    % Calculate histogram
    myhist = zeros(max_level, 1);
    for i = 1:R
        for j = 1:C
            myhist(img(i, j) + 1) = myhist(img(i, j) + 1) + 1;
        end
    end

    % Calculate PDF
    pdf = myhist / (R * C);

    % Calculate CDF
    sum = 0;
    cdf = zeros(max_level, 1);
    for i = 1:max_level
        sum = sum + pdf(i); 
        cdf(i) = sum; 
    end

    % Scale CDF to [0, max_level-1] and round
    lot = round(cdf * (max_level - 1));

    % Map pixel values using CDF
    equalized_img = uint8(zeros(R, C));
    for i = 1:R
        for j = 1:C
            equalized_img(i, j) = lot(img(i, j) + 1);
        end
    end
end

%{
function equalized_img = my_histeq(img)
    % Calculate histogram
    myhist = imhist(img);

    % Calculate PDF
    pdf = myhist / numel(img);

    % Calculate CDF
    cdf = cumsum(pdf);

    % Scale CDF to [0, 255] and round
    lot = round(cdf * (double(max(img(:))) - 1));

    % Map pixel values using CDF
    equalized_img = uint8(lot(img + 1));
end
%}
