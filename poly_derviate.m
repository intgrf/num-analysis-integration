function f = poly_derviate(F)

len = length(F);
f = zeros(1, len-1);

    for i = 1 : len - 1
        f(i) = (len - i) * F(i);
    end

end