function middle_rectangles_plot(f, x)
s = 0;
n = length(x);
for i = 1 : 2 : n - 2
    plot([x(i) x(i+2)], [f(i+1) f(i+1)], 'b'); hold on;
    plot(x(i+1), f(i+1), 'b.'); hold on;
    plot([x(i) x(i)], [0, f(i+1)], 'b'); hold on; grid on;
    plot([x(i+2) x(i+2)], [0, f(i+1)], 'b'); hold on; grid on;   
    h = x(i+2) - x(i);
    s = s + f(i+1)*h;
end
end