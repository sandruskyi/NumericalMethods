function m = Jacobi (A,B,n,e)
    x=zeros(1,n);
    y=zeros(1,n);
    b=1;
    while (b>e)
        b=0;
        y=x;
        for i = 1:n
            aux=0;
            for j = 1:n
               if j~=i
                   aux = aux + A(i,j)*y(1,j);
               end
            end
            x(1,i)= (B(1,i)-aux)/A(i,i);
        end
        for i = 1:n
           if(abs(x(1,i)-y(1,i))>b)
               b=abs(x(1,i)-y(1,i));
           end
        end
    end
    m=x;
end