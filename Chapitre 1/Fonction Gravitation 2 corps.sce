function dvdt=gravit(t,v)
	G = 6.67*10^(-11);
	dvdt(1)=v(3);//u1'x
	dvdt(2)=v(4);//u1'y
	dvdt(3:4)=+G*Masse2*((v(5:6)-v(1:2))/(norm(v(5:6)-v(1:2)).^3))//u1''x
	dvdt(5)=v(7);//u2'x
	dvdt(6)=v(8);//u2'y
	dvdt(7:8)=-G*Masse1*((v(5:6)-v(1:2))/(norm(v(5:6)-v(1:2)).^3))//u2''x
endfunction

function [t,Solution]=Gravit2Corps(a,b,N,u1,uprime1,u2,uprime2,m1,m2);
    h=(b-a)/N;
    Masse1=m1
    Masse2=m2
    y(1,1)=u1(1);
    y(2,1)=u1(2);
    y(3,1)=uprime1(1);
    y(4,1)=uprime1(2);
    y(5,1)=u2(1);
    y(6,1)=u2(2);
    y(7,1)=uprime2(1);
    y(8,1)=uprime2(2);
    t=a:h:b;
//Version Euler ! Approximation mauvaise
//    for i=1:N;
//        y(:,i+1)=y(:,i)+h*gravit(t(i),y(:,i));
//    end
    Solution=ode(y(:,1),t(1),t,gravit);

//Commande d'éssai : [t,y]=Gravit2Corps(0,2*27.55*24*60*60,10000,[0,0],[0,0],[3.84402*10^8,0],[0,(2*%pi/(27.55*24*60*60))*3.84402*10^8],5.975e24,7.35e22);
endfunction
