function y=f(x)
    y=1/2*x'*A*x-b'*x;
endfunction
A=[2 -1
   -1 2];
b=[1;1];
[P,D]=spec(A)
for k=1:3
    for l=1:3
        x0=[k,l]'
        xch=A^-1*b
        t=1:360;//Angle éllipse
        a1=sqrt((2*(f(x0)-f(xch)))/(D(1,1)))
        a2=sqrt((2*(f(x0)-f(xch)))/(D(2,2)))
        x=zeros(2,length(t));
        for i=1:length(t)
            x(:,i)=xch+P*[a1*cosd(t(i));a2*sind(t(i));]
        end
        z=ones(length(t),length(t))*f(x0);
        plot3d(x(1,:),x(2,:),z);
        //plot3d(x(1,:),x(2,:),z)
        //scf(1)
        //plot(t,x(1,:),t,x(2,:))
    end
end
