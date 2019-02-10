function s = left_rectangles(f, x)
s = 0;
n = length(x);

for i = 1 : n-1
    h = x(i+1)-x(i);
    s = s + f(i)*h;
end
end