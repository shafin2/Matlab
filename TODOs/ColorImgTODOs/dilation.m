a =[1 0 0 0 0; 0 1 1 0 0; 0 1 1 0 0; 0 0 1 0 0; 0 0 0 0 0]

se1 = strel('square',3)

b = imdilate (a,se1)

se2 = strel('rectangle', [1 3])

c = imdilate (a,se2)

