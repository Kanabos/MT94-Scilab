N=10;//taille de la matrice M : N*N
clf
plot([-1.2 1.2],[-1.2 1.2],'.')
stacksize max;
set(gca(),'isoview','on')
epsilon = %eps;//précision machine
   
[X,Y]=meshgrid(linspace(-1.2,1.2,N));
Z=X+%i*Y;
z1=1;//solution 1
z2=-.5+(sqrt(3)/2)*%i;//solution 2
z3=-.5-(sqrt(3)/2)*%i;//solution 3
eps=1e-15;
ITMAX=20;

for i = 1 : ITMAX
   
    Z = 2/3*Z+(1/3)*Z.^(-2);

    C=ones(N,N)*color("white");
    C(abs(Z-z1)<eps)=color('red');//rouge
    C(abs(Z-z2)<eps)=color("green");//vert
    C(abs(Z-z3)<eps)=color("blue");//bleu
    Matplot1(C,rect=[-1.2 -1.2 1.2 1.2]);//affichage

end
