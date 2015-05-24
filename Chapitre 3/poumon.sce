function [C,D,E]=poumon(A,B,n)
 phi=acos(1/10)
    if(n>1) then
        //prérequis de calcul
        an=(1/(2*cos(phi))).*[cos(phi) -sin(phi)
            sin(phi) cos(phi)];
        //Calcul point C
        C=(B-A)*5/11+A
        //Calcul point E
        E=(B-A)*6/11+A
        //Calcul point D
        D = an *(E-C) + C;
        poumon(A,C,n-1);
        poumon(C,D,n-1);
        poumon(D,E,n-1);
        poumon(E,B,n-1);
    else
        plot([A(1),B(1)],[A(2),B(2)])
    end
endfunction
