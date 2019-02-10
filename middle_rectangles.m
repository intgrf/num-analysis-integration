function s = middle_rectangles(f, x)
s = 0;
n = length(x);
for i = 1 : 2 : n - 2
    h = x(i+2) - x(i);
    s = s + f(i+1)*h;
end
end