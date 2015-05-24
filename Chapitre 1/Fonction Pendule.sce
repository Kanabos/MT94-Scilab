function z=f5(t,y)
	g=9.81; //Constante de gravité
	L=1 //Longueur de corde
	z(1)=y(2);
	z(2)=(-g/L)*sin(y(1));//
endfunction
function z=f5appro(t,y)
	g=9.81; //Constante de gravité
	L=1 //Longueur de corde
	z(1)=y(2);
	z(2)=(-g/L)*y(1);//
endfunction

function [t,y]=pendule(a,b,N,y0,y1);
    h=(b-a)/N;
    y(1,1)=y0;
    y(2,1)=y1;
    t=a:h:b;
           y=ode(y(:,1),t(1),t,f5);
endfunction

function [t,y]=penduleappro(a,b,N,theta0);
    h=(b-a)/N;
    t=a:h:b;
    g=9.81
    L=1
    y=0
    for i=1:N+1
        y(i)=theta0*cos(sqrt(g/L)*t(i))
    end
    y=y'
endfunction
