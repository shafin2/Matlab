function output_img = my_constrast_stretch(img, L)
    % Find the minimum and maximum intensity values
    min_value = min(img(:));
    max_value = max(img(:));

    % Calculate the difference
    diff = max_value - min_value;

    % Perform histogram stretching
    output_img = (round(((img - min_value) * (L - 1) / diff) * 255));
end
