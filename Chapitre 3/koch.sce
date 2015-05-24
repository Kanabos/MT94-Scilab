function [C,D,E]=koch(A,B,n,phi)
    if(n>1) then
        //prérequis de calcul
        an=(1/(2*cos(phi))).*[cos(phi) -sin(phi)
            sin(phi) cos(phi)];
        //Calcul point C
        C=(B-A)/3+A
        //Calcul point E
        E=(B-A)*2/3+A
        //Calcul point D
        D = an *(E-C) + C;
        koch(A,C,n-1);
        koch(C,D,n-1);
        koch(D,E,n-1);
        koch(E,B,n-1);
    else
        plot([A(1),B(1)],[A(2),B(2)])
    end
endfunction
