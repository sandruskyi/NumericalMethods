function m = Simpson13 (f, a,b)
    Int= ((b-a)/6)*(f(a)+4*f((a+b)/2)+f(b));
    m= Int;
end

