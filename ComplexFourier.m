
function  f = ComplexFourier(x,ck)

    k = 0:length(ck)-1;
    ak = ck + conj(ck);
    bk = 1i*(ck-conj(ck));
    f = 2*ck(1);
    
    for i = 2:length(k)
        f = f + ak(i).*cos(x.*k(i)) + bk(i).*sin(x.*k(i));
    end
end