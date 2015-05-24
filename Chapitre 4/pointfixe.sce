function y=g(x)
    y=(x+2)/(x+1);
endfunction
    
function x=pointfixe(a,b,tol,nbe)
    i=1;
    x0=(a+b)/2;
    x(1)=x0;
    while((abs(x(i)-g(x(i)))>tol)&(i<=nbe)) 
        x(i+1)=g(x(i));
        disp((i<=nbe))
        i=i+1;
    end
endfunction
