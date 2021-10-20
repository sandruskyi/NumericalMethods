function m = BaseLagrange(sop,i)
n=length(sop);
p=@(x) 1;
for j = 1:n
    if j~=i
        auxj = sop(j);
        auxi = sop(i);
        p=@(x) ((x-auxj)/(auxi-auxj))*p;
    end
end
syms x;
m=p(x);
end