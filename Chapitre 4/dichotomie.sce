function k=f(e)
    k=e^2-2
endfunction
function [x]=dichotomie(a,b,tol,nbemax,alpha)
    x0=(a+b)/2;
    x(1)=x0;
    i=1;
    q(1)=0
    while((abs(f(x(i)))>tol)&(i<=nbemax))
        if(f(x(i))*f(a)<0) then
            b=x(i);
        else
            a=x(i);
        end
        x(i+1)=(a+b)/2;
        i=i+1;
    end
endfunction
