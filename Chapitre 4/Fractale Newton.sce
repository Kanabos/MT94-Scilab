//p=poly([-1,0,0,1],"z","c")
//racines=roots(p)
racines=[-.5+(sqrt(3)/2)*%i,-.5-(sqrt(3)/2)*%i,1]
N=1000;
[X,Y]=meshgrid(linspace(-1.2,1.2,N))
Z2=X+%i*Y
function k=he(e)
    k=e^3-1
endfunction
function k=heprime(e)
    k=3*e^2
endfunction
function s=compar(e)
    s=8
    if abs(e-racines(1))<%eps then
        s=5
    elseif abs(e-racines(2))<%eps then
        s=3
    elseif abs(e-racines(3))<%eps then
        s=2
    end
    
endfunction
M=zeros(N,N);
nbe=20
for i=1:N
    for j=1:N
        k=1
        while((compar(Z2(i,j))==8)&(k<=nbe))
            Z2(i,j)=Z2(i,j)-he(Z2(i,j))/heprime(Z2(i,j));
            k=k+1
        end
    M(i,j)=compar(Z2(i,j));
    end
end
