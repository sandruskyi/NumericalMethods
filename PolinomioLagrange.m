function m = PolinomioLagrange(f,sop)
n=length(sop);
p=0;
for i = 1:n
    p=f(sop(i))*BaseLagrange(sop,i)+p;
end
m=p;
end