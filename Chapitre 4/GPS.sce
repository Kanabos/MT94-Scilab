function y=f(X)
    y=[norm(X-S1,2)^2-N(1)^2
    norm(X-S2,2)^2-N(2)^2
    norm(X-S3,2)^2-N(3)^2];
endfunction
function d=fprime(X)
    d=[2*(X-S1)'
    2*(X-S2)'
    2*(X-S3)'];
endfunction
function x=GPS
S1 =[-11716.227778,-10118.754628,21741.083973]'
S2 =[-12082.643974,-20428.24179,11741.374154]'
S3 =[14373.286650,-10448.439349,19596.404858]'
N=[22163.847742,21492.777482,21492.469326]
X0=[0,0,0]'
x=fsolve(X0,f,fprime);
endfunction
