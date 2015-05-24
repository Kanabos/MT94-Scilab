funcprot(0);
l=read('lena.csv',512,512);
lena=l';//pour éviter l'effet miroir et le pivot à 90 degré sens trigo
x=[1:512];
y=[512:-1:1];//pour que la photo soit à l'endroit en y
[U,S,V]=svd(lena);//décomposition SVD
Vdash=V';//transpositon
svalues=diag(S);
clf;
xset('colormap',graycolormap(256));//pour la photo en noir et blanc
j=0;//itérateur pour la sélection de la sous-fenêtre
for s = [10 30 60 110 160 500 ]         
    j=j+1//mise à jour de l'itérateur    
    subplot(2,3,j);//sélection de la bonne sous-fenêtre
    A = U(:,1:s) * S(1:s,1:s) * Vdash(1:s,:);
    str = 'Lena avec sigma contenant '+ string(s) +' coefficients / 512'
    grayplot(x,y,A);    
    title(str);// affichage d'un titre
    isoview(0,512,0,512)//pour ne pas changer la taille de la fenêtre
end
