function ya=tapisv2(x,y,a,b,n,m)
//     if n==m then
//        figtapis
//        xset("color",0)//Couleur Noir
//        xfrect(x,y,a,b)//Dessine triangle
//        xset("color",8)//Redevient blanc
//     end
     if(n==m) then
     figtapis
     xset("color",0)
     end
     if(n>1) then
        //Appels récursifs vers rectangles plus petits
        tapisv2(x,y,a/3,b/3,n-1,m)//Haut gauche
        tapisv2(x+a/3,y,a/3,b/3,n-1,m)//Haut Milieu
        tapisv2(x+2*a/3,y,a/3,b/3,n-1,m)//Haut droite
        tapisv2(x,y-b/3,a/3,b/3,n-1,m)//Milieu Gauche
        tapisv2(x+2*a/3,y-b/3,a/3,b/3,n-1,m)//Milieu droite
        tapisv2(x,y-2*b/3,a/3,b/3,n-1,m)//Bas gauche
        tapisv2(x+a/3,y-2*b/3,a/3,b/3,n-1,m)//Bas Milieu
        tapisv2(x+2*b/3,y-2*b/3,a/3,b/3,n-1,m)//Bas droite
    elseif(n==1) then
        figtapis
        xfrect(x,y,a,b)//Dessine rectangle
    end
    ya=1
//EXEMPLE :tapisv2(0,0,10,10,5,5)
endfunction
