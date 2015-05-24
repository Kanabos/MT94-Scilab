function ya=tapis(x,y,a,b,n,m)
     if n==m then
        figtapis
        xset("color",0)//Couleur Noir
        xfrect(x,y,a,b)//Dessine rectangle
        xset("color",8)//Redevient blanc
     end
     if(n>0) then
        //Carré central blanc
        xfrect(x+a/3,y-b/3,a/3,b/3)
        //Appels récursifs vers rectangles plus petits
        tapis(x,y,a/3,b/3,n-1,m)//Haut gauche
        tapis(x+a/3,y,a/3,b/3,n-1,m)//Haut Milieu
        tapis(x+2*a/3,y,a/3,b/3,n-1,m)//Haut droite
        tapis(x,y-b/3,a/3,b/3,n-1,m)//Milieu Gauche
        tapis(x+2*a/3,y-b/3,a/3,b/3,n-1,m)//Milieu droite
        tapis(x,y-2*b/3,a/3,b/3,n-1,m)//Bas gauche
        tapis(x+a/3,y-2*b/3,a/3,b/3,n-1,m)//Bas Milieu
        tapis(x+2*b/3,y-2*b/3,a/3,b/3,n-1,m)//Bas droite
    end
    ya=1
//EXEMPLE :tapis(0,0,10,10,5,5)
endfunction
