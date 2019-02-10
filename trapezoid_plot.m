function trapezoid_plot(f, x)
s = 0;
n = length(x);

for i = 1 : n-1
    plot([x(i) x(i+1)], [f(i) f(i+1)], 'b'); hold on; grid on;
    plot([x(i) x(i+1)], [f(i) f(i+1)], 'b.'); hold on; grid on;
    plot([x(i) x(i)], [0, f(i)], 'b'); hold on; grid on;
    plot([x(i+1) x(i+1)], [0, f(i+1)], 'b'); hold on; grid on;    
    h = x(i+1) - x(i);
    sum = f(i) + f(i+1);
    s = s + (sum/2)*h;
end
end