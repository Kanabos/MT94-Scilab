//1. On le montre facilement en développant la seconde expression. AIde : A^t=A et (^x*A)=A^t*x^t
//2. Demontrable
//3.
function y=f(x)
    y=1/2*x'*A*x-b'*x;
endfunction
A=[2 -1
   -1 2];
b=[1;1];
[P,D]=spec(A)
z=zeros(1,360)
for k=1:10
    for l=1:10 
        x0=[k,l]'
        xch=A^-1*b
        t=0:360;//Angle éllipse
        a1=sqrt((2*(f(x0)-f(xch)))/(D(1,1)))
        a2=sqrt((2*(f(x0)-f(xch)))/(D(2,2)))
        x=zeros(2,length(t));
        for i=1:length(t)
            x(:,i)=xch+P*[a1*cosd(t(i));a2*sind(t(i));]
        z(i)=f(x0);
    end
    param3d(x(1,:),x(2,:),z)
//        [X,Y]=meshgrid(x(1,:),x(2,:))
        
//        for a=1:length(t)
//            for c=1:length(t)
//                Z(a,c)=f([X(a,c),Y(a,c)]')
//            end
//        end
        //plot3d(x(1,:),x(2,:),z)
        //scf(1)
        //plot(t,x(1,:),t,x(2,:))
    end
end
