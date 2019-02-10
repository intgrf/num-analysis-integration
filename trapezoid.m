function s = trapezoid(f, x)
s = 0;
n = length(x);
for i = 1 : n-1
    h = x(i+1) - x(i);
    sum = f(i) + f(i+1);
    s = s + (sum/2)*h;
end
end