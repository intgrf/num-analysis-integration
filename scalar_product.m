function result = scalar_product(f, g)

p = conv(f, g);
P = poly_integral(p);

result = polyval(P, 1) - polyval(P, -1);
end

