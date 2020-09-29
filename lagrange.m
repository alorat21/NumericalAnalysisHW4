function sum = lagrange(k,y)
sum = 0;
for i=1:length(k)
    p=1;
    for j=1:length(k)
        if j~=i
            c = poly(k(j))/(k(i)-k(j));
            p = conv(p,c);
        end
    end
    term = p*y(i);
    sum = sum + term;
end