//avec fonction euler1
clear;
cd C:\Users\OS\Documents\Cours\MT94\TD°1\;
exec('Fonctions_equa_diff.sce');
for k=1:3
    N=10^k
    disp(N);
    yexact=zeros(N,1)
    [t,y]=euler1(0,1,N,0);//récupération des approxiamtions
    for i=1:N+1 //Calcul des valeurs exactes
        yexact(i)=1-exp((-(t(i)^2))/2);
    end
    v(k)=1/N
    vlog(k)=log(v(k))
    e1(k)=max(abs(y-yexact));
    elog(k)=log(e1(k));
    
end
    disp(elog)
    coefs=regress(vlog,elog);//calcul des coefs
    disp(coefs);
//    plot(vlog,elog);
//    disp(coefs);
//    plot(v,e1);

//[a,b]=ecart(0,1,10,0,3);
//plot(a,b(:,1),a,b(:,2),a,b(:,3),a,b(:,4));
//legend('Euler','Euler-Cauchy','Point-milieu','Runge-Kutta',4);
