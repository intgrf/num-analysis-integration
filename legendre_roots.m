clc
clear

a = 0;
b = 0.01;
n = 11;
Ln = orthogonal_polynom(n);
t = roots(Ln)';
x = zeros(1, n);
for i = 1 : n
    x(i) = ((b-a)/2)*t(i) + ((b+a)/2);
end
x = sort(x);
y = sin(x);

A = zeros(1, n);
for k = 1 : n
    B = 1;
    for j = 1 : n
        if j ~= k
            B = conv(B, [1/(x(k) - x(j)), -x(j)/(x(k) - x(j))]);
        end
    end 
    B = poly_integral(B);
    B = polyval(B, b) - polyval(B, a);
    A(k) = ((b-a)/2) * B;
end

s = 0;

for i = 1 : n
   s = s + y(k)* A(k); 
end

I = -cos(b) - (-cos(a));
diff_t = abs(I - s);
alpha =  -log(diff_t)/log(n)
