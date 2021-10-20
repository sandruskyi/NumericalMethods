function sol = NewtonRaphson(f,fd,pto,e)
    n=1;
    y0=pto;
    y1=y0-(f(y0)/fd(y0));
    while(abs(y1-y0)>e)
        y0=y1;
        n=n+1;
        y1=y0-(f(y0)/fd(y0));
    end
    v = y1-e*10:e/100:y1+e*10;
    g = f(v);
    h = 0*v;
    plot(v,g,v,h,y1, f(y1), 'ro', 'MarkerSize', 18);
    sol=[y1,"n =",n]; 
end