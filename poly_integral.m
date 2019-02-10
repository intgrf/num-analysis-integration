function F = poly_integral(f)

len = length(f);
F = zeros(1, len + 1);

for i = 1 : len
    deg = len - i + 1;
    coeff = f(i) / deg;
    F(i) = coeff;
end

end