function k=f(e)
    k=e^2-2
endfunction
function k=fprime(e)
    k=2*e
endfunction
function x=newton(a,b,tol,nbe)
    x0=(a+b)/2;
    x(1)=x0;
    i=1;
    while((abs(f(x(i)))>tol)&(i<=nbe))
        x(i+1)=x(i)-f(x(i))/fprime(x(i));
        i=i+1;
    end
endfunction
