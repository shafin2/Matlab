a = [ 0 0 0 0 0 ; 0 1 1 1 0; 1 1 1 0 0; 0 1 1 1 1; 0 0 0 0 0]

se1 = strel('square',3)

b = imerode (a,se1)

se2 = strel('rectangle', [1 3])

c = imerode (a,se2)

% Create various structuring elements
se_square = strel('square', 3);
se_disk = strel('disk', 5);
se_line = strel('line', 10, 45);
se_diamond = strel('diamond', 3);
se_rectangle = strel('rectangle', [3, 5]);
se_octagon = strel('octagon', 3);