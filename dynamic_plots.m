clc
clear

a = 1;
b = 10;

x_sin = a : 0.01 : b;
y_sin = sin(x_sin);
for h = 1 : -0.1 : 0.0001
    clf;
    plot([a, b], [0, 0], 'b'); hold on; grid on;
    plot(x_sin, y_sin, 'r'); hold on; grid on;
    x = a : h : b;
    y = sin(x);
    %trapezoid_plot(y, x);
    %left_rectangles_plot(y, x);
    middle_rectangles_plot(y, x);
    pause;
end