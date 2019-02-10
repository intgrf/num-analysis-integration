function Ln = legendre_polynom(n)
    Ln = 1; % deg = 0
    
    for i = 1 : n
        Ln = conv(Ln, [1, 0, -1]);
    end
    
    for i = 1 : n
       Ln = poly_derviate(Ln); 
    end
end