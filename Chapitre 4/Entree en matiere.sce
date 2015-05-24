//1 [1,2]
//2.
//x1=dichotomie(1,2,10^-10,1000);
//x1=pointfixe(1,2,10^-10,1000);
//x1=newton(1,2,10^-10,1000);
x1=secante(1,2,10^-10,1000);
e=abs(x1-sqrt(2));
clf
plot(log(e(1:$-1)),log(e(2:$)),'-o') 
scf(1)
plot(e(2:$)./e(1:$-1),'-o');
//La méthode de la sécante se rapporche de la méthode de Newton dans la mesure ou l'on retrouve en partie l'expressoin de la dérivée dans la méthode de la sécante : on a (x(k)-x(k-1)/(f(x(k))-f(x(k-1))). Lorsque x(k) tend vers x(k-1) ce rapport tend vers f'(x(k-1)), les valeurs de la méthode de ma sécantes devient donc similaires à celles obtenues avec celle de newton.

//Calcul du alpha :
e=abs(x1-sqrt(2));
alpha=reglin(log(e(1:$-1))',log(e(2:$))');
