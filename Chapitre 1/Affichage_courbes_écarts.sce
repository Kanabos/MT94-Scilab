//Affichage 
//Chargement fonction écart
clear
cd C:\Users\OS\Documents\Synchronisé\Cours\MT94\TD°1\;
exec('Fonction_écart.sce');
//récupération des valeurs de l'écart
[abci,ordo,coefs]=ecart(0,4,0,3);
x=abci;
plot(x,coefs(1,1)*x+coefs(1,2),x,coefs(2,1)*x+coefs(2,2),x,coefs(3,1)*x+coefs(3,2),x,coefs(4,1)*x+coefs(4,2));
legend('Ecart Euler','Ecart Euler-Cauchy','Ecart Point-milieu','Ecart Runge-Kutta',4);
