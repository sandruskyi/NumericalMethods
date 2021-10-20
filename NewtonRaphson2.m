function sol = NewtonRaphson2(f,fd,pto,e,x0)
T=["" "Xn" "En" "|En+1|/|En|^1" "|En+1|/|En|^2" "|En+1|/|En|^3"];
disp(T);
n=1;
y0=pto;
y1=y0-(f(y0)/fd(y0));
T=["0" num2str(pto) num2str(Error(x0,y0)) num2str(abs(Error(x0,y1))/abs(Error(x0,y0))) num2str(abs(Error(x0,y1))/abs(Error(x0,y0))^2) num2str(abs(Error(x0,y1))/abs(Error(x0,y0)^3))];
disp(T);
while(abs(y1-y0)>e)
    y0=y1;
    n=n+1;
    y1=y0-(f(y0)/fd(y0));
    T=[num2str(n-1) num2str(pto) num2str(Error(x0,y0)) num2str(abs(Error(x0,y1))/abs(Error(x0,y0))) num2str(abs(Error(x0,y1))/abs(Error(x0,y0))^2) num2str(abs(Error(x0,y1))/abs(Error(x0,y0)^3)) ""];
    disp(T);
end
sol=[y1,"n =",n]; 
end