x=-2.1:0.01:0.6
y=-1.2:0.01:1.2
itmax=50
ittot=0
for i=1:length(x)
    disp(x(i))
    for j=1:length(y)
        ittot=ittot+1
        Z=0;
        c=x(i)+y(j)*%i;
        k=0
        while((k<itmax)&(abs(Z)<2))
            Z=Z^2+c;
            k=k+1
        end
        if k==itmax then
            plot(x(i),y(j),'.','markersize',1)
            disp(abs(Z))
        end
    end
end
