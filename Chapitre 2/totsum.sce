for i=1:1100
    totsum=sum(tot(:,i))
    t=tot(:,i)/b(1,1)^i
    disp(t)
end
