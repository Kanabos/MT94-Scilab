//2.
//Attention ! Executer Fonction Ecart.sce
[t,s]=Gravit2Corps(0,2*27.55*24*60*60,10000,[0,0],[0,0],[3.84402*10^8,0],[0,(2*%pi/(27.55*24*60*60))*3.84402*10^8],5.975e24,7.35e24); //récupération des valeurs.
clf;//clear screen
//Récupération des Abcisses et ordonnées des 2 corps
Absterre=s(1,:);
Ordterre=s(2,:);
Abslune=s(5,:);
Ordlune=s(6,:);
Masseterre=5.975e24;
Masselune=7.35e24;

figure(0);//Définition de la fenetre de figure
plot(Absterre,Ordterre,'r',Abslune,Ordlune,'g'); 
title('Simulation de la trajectoire de la Terre et de la Lune pendant 2 périodes de rotation; Repère (0,x,y)');
legend('Trajectoire Terre','Trajectoire Lune');

//3.
//Calcul du centre de gravité pour chaque point
AbsG = ((Masseterre*Absterre+Masselune*Abslune)/(Masseterre+Masselune));
OrdG = ((Masseterre*Ordterre+Masselune*Ordlune)/(Masseterre+Masselune));

figure(1);//Nouvelle figure
plot(Absterre-AbsG,Ordterre-OrdG,'r',Abslune-AbsG,Ordlune-OrdG,'g');//Soustraction des coordonnées des deux corps et des coordonnées du centre de Gravité pour centrer en celui-ci 
title('Simulation de la trajectoire de la Terre et de la Lune pendant 2 périodes de rotation; Repère (G,x,y)');
legend('Trajectoire Terre','Trajectoire Lune');

//4.
//Copie du script
figure(2);//Nouvelle figure
x=s([1 5],:);
y=s([2 6],:);
plot(x(1,1),y(1,1),'.',x(2,1),y(2,1),'.');
h=gce();
a=gca();
a.data_bounds=[min(x) max(x) min(y) max(y)];
a.isoview='on';
for n=2:length(t)
h.children(1).data=[x(1,n) y(1,n)];
h.children(2).data=[x(2,n) y(2,n)];
end
