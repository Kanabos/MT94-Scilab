//Afficher Courbes
a=0;
b=4;
N=20;
y0=0;
y1=0;
y2=0;
y3=0;
y4=0;
yexact=0;
[t1,y1]=euler1(a,b,N,y0);

[t2,y2]=eulercauchy(a,b,N,y0);

[t3,y3]=pointmilieu(a,b,N,y0);

[t4,y4]=rungekutta(a,b,N,y0);
 for i=1:N+1 //Calcul des valeurs exactes
            yexact(i)=1-exp((-(t1(i)^2))/2);
 end
t5=t1;
plot(t1,y1,'g',t2,y2,'b',t3,y3,'r',t4,y4,'y',t5,yexact,'c');
//title('Représentation des différentes approximations');
legend('Euler','Euler-Cauchy','Point-Milieu','Ruge-Kuttalegen','Fonction exacte',2);

