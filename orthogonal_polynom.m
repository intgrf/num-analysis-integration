function p = orthogonal_polynom(n)
e = zeros(n+1);
% every polynom is a row in e-matrix
for i = 0 : n
   e(i+1, n+1 - i) = 1;  
end
scalars = zeros(1, n+1);
scalars(1) = scalar_product(e(1, 1 : n+1), e(1, 1: n+1));
    for i = 1 : n % i = deg of current polynom
        j = i + 1; % index of current polynom in e-matrix
        coeff = zeros(1, i);
        for k = 1 : i
            coeff(k) = scalar_product(e(k, n+1-k : n+1), e(j, n+1-i : n+1)) / scalars(k);
        end
        for t = 1 : i
            e(j, 1 : n+1) = e(j, 1 : n+1) - coeff(t) * e(t, 1 : n+1);
        end
        scalars(j) = scalar_product(e(j, 1 : n+1), e(j, 1 : n+1));
    end
p = e(n+1, 1: n+1);
end