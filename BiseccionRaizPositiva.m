function m = BiseccionRaizPositiva (f,x,y)
    n=0;
    fin=true;
    while (fin)
    fx=f(x);
    m=(x+y)/2;
    fm=f(m);
        if (fm<0)
            if (fx>0)
            y=m;
            else
            x=m;
            end
        else
            if (fx<0)
            y=m;
            else
            x=m;
            end
        end
    n=n+1;
    fin=(fm>0);
    end
    v = m-e*10:e/100:m+e*10;
    g = f(v);
    h = 0*v;
    plot(v,g,v,h,m, fm, 'ro', 'MarkerSize', 18);
    m=[n,m];
end

