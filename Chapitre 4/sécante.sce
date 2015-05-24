function k=f(e)
    k=e^2-2
endfunction
function x=secante(a,b,tol,nbe)
    x0=(a+b)/2;
    x(1)=x0;
    x(2)=(x0+2)/(x0+1);
    i=1;
    while((abs(f(x(i+1)))>tol)&(i<=nbe))
       x(i+2)=x(i+1)-(f(x(i+1))/(f(x(i+1))-f(x(i))))*(x(i+1)-x(i))
       i=i+1;
    end
endfunction
