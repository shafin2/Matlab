A = rgb2gray(imread('../NoiceRemoval/n.jpeg'));  % Replace with actual image path
[R, C] = size(A);

B = zeros(R, C);

% Apply a 3x3 averaging filter
for i = 2:R-1
    for j = 2:C-1
        temp = A(i-1:i+1, j-1:j+1);  % Extract 3x3 neighborhood
        mysum = sum(temp(:));       % Calculate sum efficiently using vectorization
        myfinal = mysum / 9;        % Calculate average
        B(i, j) = myfinal;          % Set filtered value
    end
end

imshow(B);
