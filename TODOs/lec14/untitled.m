I = [0.5 0 0; 0 0.5 0; 0 0 1];
A = [2 3; 1 4];
B = zeros(4,4);

for i=1:4
    for j=1:4
        m = I * [i;j;1];
        a = round(m(1));
        b = round(m(2));
        B(i,j) = A(a,b);
    end
end
B