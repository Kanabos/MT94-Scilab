//Calcul des alpha(x,y)
alpha(1,:)=l1*cosd(theta(1,:))
alpha(2,:)=l1*sind(theta(1,:))
for i=1:length(alpha(1,:))
//Plot des segments vers alpha
plot([0,alpha(1,i)],[0,alpha(2,i)])
//Plot des segments vers A
plot([alpha(1,i),Pos(1,i)],[alpha(2,i),Pos(2,i)])
end
