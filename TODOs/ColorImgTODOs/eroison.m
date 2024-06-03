a = [ 0 0 0 0 0 ; 0 1 1 1 0; 1 1 1 0 0; 0 1 1 1 1; 0 0 0 0 0]

se1 = strel('square',3)

b = imerode (a,se1)

se2 = strel('rectangle', [1 3])

c = imerode (a,se2)