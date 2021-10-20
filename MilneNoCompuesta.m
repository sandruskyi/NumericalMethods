function m = MilneNoCompuesta(f, a,b)
    h= (b-a)/4;
    Int1= ((b-a)/90)*((7*f(a))+(32*f(a+h))+(12*f(a+h+h))+(32*f(a+h+h+h))+(7*f(a+h+h+h+h)));
    m=Int1; 
end

