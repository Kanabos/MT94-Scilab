 function [abs,ord,coefs]=ecart(a,b,y0,l)
     funcprot(0);//Empeche message
    cd C:\Users\OS\Documents\Synchronisé\Cours\MT94\TD°1\;
    exec('Fonctions_equa_diff.sce');//cd
    //Déclaration des ei(k)
    e1=zeros(l:1);
    for k=1:l
        N=10^k;
        yexact=zeros(N,1);
        [t,y1]=euler1(a,b,N,y0);

        [t,y2]=eulercauchy(a,b,N,y0);

        [t,y3]=pointmilieu(a,b,N,y0);

        [t,y4]=rungekutta(a,b,N,y0);
        
        for i=1:N+1 //Calcul des valeurs exactes
            yexact(i)=1-exp((-(t(i)^2))/2);
        end
        //Calcul des pas
        v(k)=1/N;
        //logarithme de ce calcul
        vlog(k)=log(v(k))
        //Calcul des écarts de chaque schéma avec la fonction réelle
        e1(k)=max(abs(y1-yexact));
        e2(k)=max(abs(y2-yexact));
        e3(k)=max(abs(y3-yexact));
        e4(k)=max(abs(y4-yexact));
        //Logarithme de ces écarts
        elog1(k)=log(e1(k));
        elog2(k)=log(e2(k));
        elog3(k)=log(e3(k));
        elog4(k)=log(e4(k));
    end
    
    //Calcul des coefs de chaque schéma 
    [pen1,ori1]=reglin(vlog',elog1');
    [pen2,ori2]=reglin(vlog',elog2');
    [pen3,ori3]=reglin(vlog',elog3');
    [pen4,ori4]=reglin(vlog',elog4');
    //Definition des réponses de la fonction 
    abs=vlog;
    ord=[elog1,elog2,elog3,elog4];
    coefs=[pen1,ori1;pen2,ori1;pen3,ori3;pen4,ori4]
endfunction
