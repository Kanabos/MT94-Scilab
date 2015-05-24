//Exemple de données
//Graphe 1
//C=[0 0 0 0 0 0 0 0
//   1 0 1 1 0 0 0 0
//   1 0 0 0 0 0 0 0
//   0 1 0 0 0 0 0 0
//   0 0 1 1 0 0 1 0
//   0 0 0 1 1 0 0 1
//   0 0 0 0 1 0 0 1
//   0 0 0 0 1 1 1 0;]

//Graphe 2
//C=[0 1 0 0 0
//   1 0 0 0 0
//   0 0 0 1 1
//   0 0 1 0 1
//   0 0 0 0 0];

//Graphe 3
//C=[0 0 1 1
//   1 0 0 0
//   1 1 0 1
//   1 1 0 0];

//Connection interurbaines
//Noms des villes par ordre alphabétique
//1-Bergame 2-Brescia 3-Côme 4-Crémone 5-Lecco 6-Lodi 7-Mantone 8-Milan 9-Pavie
//10-Sondrio 11-Varèse
//------Construction de la matrice------//
//C=[0 1 1 0 1 0 0 1 0 0 0
//   1 0 0 1 0 0 0 1 0 0 0
//   1 0 0 0 1 0 0 1 0 0 0
//   0 1 0 0 0 1 1 0 0 0 0 
//   1 0 1 0 0 0 0 0 0 1 0
//   0 0 0 1 0 0 0 1 0 0 0
//   0 0 0 1 0 0 0 0 0 0 0 
//   1 1 1 0 0 1 0 0 1 0 1
//   0 0 0 0 0 0 0 1 0 0 0
//   0 0 0 0 1 0 0 0 0 0 0
//   0 0 0 0 0 0 0 1 0 0 0
//	];
//------Résultat r-------//
//    0.3823070  2nd Bergame
//    0.2998739  5ème Brescia
//    0.2949997  6ème Côme
//    0.3323682  3ème Crémone
//    0.315165   4ème Lecco
//    0.2186337  7ème Lodi
//    0.1344085  8ème Mantone
//    0.5945311  1er Milan
//    0.1244627  10ème Pavie
//    0.1295342  9ème Sondrio
//    0.1244627 10ème Varèse
//
function [r,G,B]=pagerank(C)
//Calcul m
m=sqrt(length(C));
//Définitin B
B=zeros(m,m);
//Définition n
n=zeros(1,m);
//Construction n
for j=1:m
	n(j)=sum(C(:,j));
end
//Construction B
for i=1:m
    for j=1:m
        B(i,j)=C(i,j)/n(j);
    end
end
//Définition G
G=zeros(m,m);
//Construction G
e=ones(m,1);//Vecteur ligne  pour obtnir une matrice de taille n*n dans G (e*e')
G=B*0.85+(((1-0.85)/m))*e*(e')
r=zeros(m,1);
[vecp,lambda]=spec(G)
r=vecp(:,1)
l=1;
//Selection du vecteur propre de la valeur propre dominante.
while ((abs(real(lambda(l,l)-1))>10^-3)&l<m)//la valeur propre récup est un complexe approximatif
	l=l+1;
	r=vecp(:,l);

end
endfunction
//Faire le diagramme (histogramme)
