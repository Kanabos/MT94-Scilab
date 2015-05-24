
pi=[%pi/32, %pi/16, %pi/8, %pi/2, 3*%pi/4 63*%pi/64];
for i=1:length(pi)
	subplot(2,3,i);
	[abs,ord]=pendule(0,5,10000,pi(i),0)
	[abs2,ord2]=penduleappro(0,5,10000,pi(i));
	plot(abs,ord(1,:),abs2,ord2)
	legend("Angle exact","Angle approché",4);
	title('Theta_0='+string(pi(i)))
end

	//Animation
	figure(1);//Nouvelle figure
	t=abs;
	x=sin(ord(1,:));
	y=-cos(ord(1,:));
	x(2,1)=1;
	y(2,1)=1;
	plot(x(1),y(1,1),'.',x(2,1),y(2,1),'*');
	h=gce();
	a=gca();
	a.data_bounds=[min(x) max(x) min(y) max(y)];
	a.isoview='on';
	for n=2:length(t)
	h.children(1).data=[x(1,n) y(1,n)];
	h.children(2).data=[0 0];
	end

