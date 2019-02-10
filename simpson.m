function s = simpson(f, x)
s = 0;
n = length(x);
for  i = 1 : 2 : n-2
    h = x(i+2) - x(i);
    s = s + (f(i) + 4*f(i+1) + f(i+2))*(h/6);
end
end