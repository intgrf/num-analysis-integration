clc
clear
a = 1;
b = 10;
h = 0.01;
x = a : h : b;
n = length(x);
y = sin(x);

I = -cos(b) - (-cos(a));

% формула трапеций
s = trapezoid(y, x);
diff_t = abs(I - s);
%alpha_t = log(diff_t)/log(n)
alpha_t = - log(diff_t)/log(n)

% формула левых прямоугольников
s = left_rectangles(y, x);
diff_lr = abs(I - s);
%alpha_lr = log(diff_lr)/log(n)
alpha_lr = - log(diff_lr)/log(n)

x1 = a : h/2 : b;
y1 = sin(x1);

% формула средних прямоугольников
s = middle_rectangles(y1, x1);
diff_mr = abs(I - s);
%alpha_mr = log(diff_mr)/log(n)
alpha_mr = - log(diff_mr)/log(n)

% формула Симпсона
s = simpson(y1, x1);
diff_s = abs(I - s);
%alpha_s = log(diff_s)/log(n)
alpha_s = - log(diff_s)/log(n)

