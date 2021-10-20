function m = MilneCompuesta(f, a,b, n)
    aux=b-a; 
    subinterv= aux/n;
    result=0;
    auxa=a; 
    auxb=b;
    for i=auxa:subinterv:auxb
        a=i;
        b=i+subinterv;
        result=result+ MilneNoCompuesta(f,a,b);
    end
    
    m= result; 

end

