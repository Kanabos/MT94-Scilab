function plotcube(position,taille)
    ///////////////////////origine : http://www.beebac.com/publication/53365/comment-resoudre-le-rubiks-cube-avec-un-code-informatique
    // Afficher un cube en 3d
    // La liste des positions des sommets (on utilise l'argument 
    // d'appel : position pour décaler tous les sommets du 
    // cube dans une même direction, donc pour décaler le cube dans cette direction).
    sommets =[
    -taille+position(1) -taille+position(2) -taille+position(3);
    -taille+position(1) -taille+position(2)  taille+position(3);
    -taille+position(1)  taille+position(2) -taille+position(3);
    -taille+position(1)  taille+position(2)  taille+position(3);
    taille+position(1) -taille+position(2) -taille+position(3);
    taille+position(1) -taille+position(2)  taille+position(3);
    taille+position(1)  taille+position(2) -taille+position(3);
    taille+position(1)  taille+position(2)  taille+position(3)
    ];
    // Le cube est composé de six faces
    cube = [2 4 8 6;  //face du haut
    7 5 1 3;  //dace du bas
    5 6 8 7;  //face gauche
    3 4 8 7;  //face avant
    1 2 4 3;  //face droite
    1 2 6 5  //face arrière
    ];
    // La liste des couleurs dans le même ordre que les facettes.
    // Conversion pour fonction plot3d
    x = matrix(sommets(cube,1),size(cube,1),length(sommets(cube,1))/size(cube,1))' ;
    y = matrix(sommets(cube,2),size(cube,1),length(sommets(cube,1))/size(cube,1))' ;
    z = matrix(sommets(cube,3),size(cube,1),length(sommets(cube,1))/size(cube,1))' ;
    //clf();
    //On évite d'afficher une couleur derrière les faces 
    // qui empêche de voir le dos du cube.
    xset("hidden3d",0);
    plot3d(x,y,z);
endfunction
function ya=tapis3d(x,y,z,a,n,m)
//     if n==m then
//        figtapis
//        xset("color",0)//Couleur Noir
//        xfrect(x,y,a,b)//Dessine triangle
//        xset("color",8)//Redevient blanc
//     end

     if(n>1) then
        //Appels récursifs vers rectangles plus petits
            //Pour z bas
            tapis3d(x,y,z,a/3,n-1,m)//Haut gauche
            tapis3d(x+2*a/3,y,z,a/3,n-1,m)//Haut Milieu
            tapis3d(x+4*a/3,y,z,a/3,n-1,m)//Haut droite
            tapis3d(x,y-2*a/3,z,a/3,n-1,m)//Milieu Gauche
            tapis3d(x+4*a/3,y-2*a/3,z,a/3,n-1,m)//Milieu droite
            tapis3d(x,y-4*a/3,z,a/3,n-1,m)//Bas gauche
            tapis3d(x+2*a/3,y-4*a/3,z,a/3,n-1,m)//Bas Milieu
            tapis3d(x+4*a/3,y-4*a/3,z,a/3,n-1,m)//Bas droite
            //Pour Z milieu
            tapis3d(x,y,z+2*a/3,a/3,n-1,m)//Haut gauche
            tapis3d(x+4*a/3,y,z+2*a/3,a/3,n-1,m)//Haut droite
            tapis3d(x,y-4*a/3,z+2*a/3,a/3,n-1,m)//Bas gauche
            tapis3d(x+4*a/3,y-4*a/3,z+2*a/3,a/3,n-1,m)//Bas droite
            //Pour Z Haut
            tapis3d(x,y,z+4*a/3,a/3,n-1,m)//Haut gauche
            tapis3d(x+2*a/3,y,z+4*a/3,a/3,n-1,m)//Haut Milieu
            tapis3d(x+4*a/3,y,z+4*a/3,a/3,n-1,m)//Haut droite
            tapis3d(x,y-2*a/3,z+4*a/3,a/3,n-1,m)//Milieu Gauche
            tapis3d(x+4*a/3,y-2*a/3,z+4*a/3,a/3,n-1,m)//Milieu droite
            tapis3d(x,y-4*a/3,z+4*a/3,a/3,n-1,m)//Bas gauche
            tapis3d(x+2*a/3,y-4*a/3,z+4*a/3,a/3,n-1,m)//Bas Milieu
            tapis3d(x+4*a/3,y-4*a/3,z+4*a/3,a/3,n-1,m)//Bas droite
    elseif(n==1) then
        plotcube([x,y,z],a)//Dessine cube
    end
    ya="Gut"
//EXEMPLE :tapis3d(0,0,0,1,3,3)
endfunction
