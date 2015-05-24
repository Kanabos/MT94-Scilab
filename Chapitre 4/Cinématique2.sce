theta=[0,0]'
t=1
for i=0:1:180
    x1(t)=1+1/2*cosd(i)
    x2(t)=1+1/2*sind(i)
    theta(:,t)=bras([x1(t),x2(t)]')
    Pos(:,t)=M(theta(:,t))
    t=t+1
end
