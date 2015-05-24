function cla=tri(r)
    n=length(r);
    r=real(r)//Conversion de complexes en réels.
    cla=zeros(n,2);
    cla(:,2)=r
    for k=1:n
        cla(k,1)=k
    end
    for i=n-1:-1:1
        for j=1:i
            if cla(j,2)<cla(j+1,2) then
                tmp=cla(j,:);
                cla(j,:)=cla(j+1,:);
                cla(j+1,:)=tmp;
            end
        end
    end
    
endfunction
