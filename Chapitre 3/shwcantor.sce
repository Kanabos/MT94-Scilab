ens=cantor(0,1,5)
j=1;
for i=1:length(ens)/2
    plot([ens(j),ens(j+1)],[0,0])
    j=(i)*2+1;
end
