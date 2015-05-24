M=500;
N = 500;
p = 2;
global x;

x = zeros (2,N); // matrice 2 * 800 composée de zéro


//transformations de l'IFS

H = [sqrt(2)/2,0;0,sqrt(2)/2];

R1 = [cos(%pi/4),-sin(%pi/4); sin(%pi/4),cos(%pi/4)];
R2 = [cos(-%pi/4),-sin(-%pi/4); sin(-%pi/4),cos(-%pi/4)];
T1 = [0 ; 1]; // translation
T2 = [0.5 ; 1.5]; // translation



clf;
set(gca(),'isoview','on'); // impose une même échelle sur les deux axes de coordonnées

//gÃ©nÃ©ration de la colormap





for j=1:N // 1 à 500
   
//IFS
    // on remplit la matrice X par des point dans chaqu colonne
    for i=1:M-1 // 1 à 799
   
             
        // rand(1,1,'def') retourne 1 scalaire compis entre 0 et 1
        // permet de générer de manière aleatoire un nombre 1 et
       
        u=floor (1 +  p * rand(1,1,'def'));
       
        // case
       
        select u
           
        case 1 then
            x(:,i+1)= H * R1*x(:,i)+ T1;
        case 2 then
            x(:,i+1)= H * R2*x(:,i) + T2;

        end
       
    end

   

    plot (x(1,:), x(2,:),'.m','markersize', 1);
end
