l1=1;
l2=1;
function X=M(t)
    X=[l1*cosd(t(1))+l2*cosd(t(1)+t(2)),l1*sind(t(1))+l2*sind(t(1)+t(2))]';
endfunction
function Y=f(t)
    Y=[M(t)-A];
endfunction
function Y=fprime(t)
    Y=[-l1*sind(t(1))-l2*sind(t(1)+t(2)),-l2*sind(t(1)+t(2));l1*cosd(t(1))+l2*cosd(t(1)+t(2)),l2*cosd(t(1)+t(2))];
endfunction
function Theta=bras(A)
Theta=fsolve([0,0]',f,fprime);
endfunction
