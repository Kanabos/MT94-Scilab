nbe=50;
x=zeros(2,1)
x(:,1)=[1,0]'//Init.
//ro=0.5//pas fixe

A=[2 -1
   -1 2];
b=[1;1];
[P,D]=spec(A)
function y=g(x)
    y=A*x-b
endfunction
function y=f(x)
    y=1/2*x'*A*x-b'*x;
endfunction
for i=1:nbe
    ro(i)=norm(g(x(:,i)))^2/(g(x(:,i))'*A*g(x(:,i)))//Calcul pas optimal
    x(:,i+1)=x(:,i)-ro(i)*g(x(:,i))//Calcul des xk
    plot([x(1,i),x(1,i+1)],[x(2,i),x(2,i+1)])//plot segment
    //Partie affichage courbe iso valeur
    x0=x(:,i)
    xch=A^-1*b
    t=0:360;//Angle éllipse
    a1=sqrt((2*(f(x0)-f(xch)))/(D(1,1)))
    a2=sqrt((2*(f(x0)-f(xch)))/(D(2,2)))
    y=zeros(2,length(t));
    for i=1:length(t)
        y(:,i)=xch+P*[a1*cosd(t(i));a2*sind(t(i));]
    end
    //Plot de la courbe isovaleur
    plot(y(1,:),y(2,:))
end
