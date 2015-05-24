//Fonction Euler ! Methode 1
function dydt=f(t,y)
    dydt=(-t*y+t);
endfunction

function [t,y]=euler1(a,b,N,y0)
    h=(b-a)/N;
    y(1)=y0;
    t=a:h:b;
    for i=1:N;
        y(i+1)=y(i)+h*f(t(i),y(i));
    end
endfunction

//Fonction Euler Cauchy ! Methode 2
function [t,y]=eulercauchy(a,b,N,y0)
    h=(b-a)/N;
    y(1)=y0;
    t=a:h:b;
    for i=1:N;
        k1=f(t(i),y(i));
        k2=f(t(i)+h,y(i)+h)
        y(i+1)=y(i)+(h/2)*(k1+k2);
    end
endfunction

//Fonction Point-Milieu ! Methode 3
function [t,y]=pointmilieu(a,b,N,y0)
    h=(b-a)/N;
    y(1)=y0;
    t=a:h:b;
    for i=1:N;
        k1=f(t(i),y(i));
        k2=f(t(i)+h/2,y(i)+(h/2)*k1);
        y(i+1)=y(i)+h*k2;
    end
endfunction

//Fonction Runge et Kutta ! Methode 4
function [t,y]=rungekutta(a,b,N,y0)
    h=(b-a)/N;
    y(1)=y0;
    t=a:h:b;
    for i=1:N;
        k1=f(t(i),y(i));
        k2=f(t(i)+h/2,y(i)+(h/2)*k1);
        k3=f(t(i)+h/2,y(i)+(h/2)*k2);
        k4=f(t(i)+h,y(i)+h*k3);
        y(i+1)=y(i)+h/6*(k1+2*k2+2*k3+k4);
    end
endfunction
