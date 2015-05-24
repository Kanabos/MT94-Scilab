function y=f(x)
    y=(1-x(1))^2+100*(x(2)-x(1)^2)^2
    //Minimum en (1,1)
endfunction
    x=-1:0.1:1;
    y=-0.5:0.1:1.5;
    for i=1:length(x)
        for j=1:length(y)
        end
        z(i,j)=f([x(i),y(j)]')
    end

