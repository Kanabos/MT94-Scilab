x=linspace(-%pi,%pi,31);
z=sin(x)'*sin(x);
n = 21
theta = linspace(20,80,n);
xbasc(); xselect()
xset("pixmap",1)   // pour activer le double buffer
alpha = linspace(60,30,n);
plot3d(x,x,z,theta(1),alpha(1),"x@y@z",[2 2 4])
xtitle("variation du point de vue avec le parametre theta")
xset("wshow")
// on fait varier theta
for i=2:n
  xset("wwpc") // effacement du buffer courant
  plot3d(x,x,z,theta(i),alpha(1),"x@y@z",[2 0 4])
  xtitle("variation du point de vue avec le parametre theta")
  xset("wshow")
end
// on fait varier alpha
for i=2:n
  xset("wwpc") // effacement du buffer courant
  plot3d(x,x,z,theta(n),alpha(i),"x@y@z",[2 0 4])
  xtitle("variation du point de vue avec le parametre alpha")
  xset("wshow")
end
xset("pixmap",0)  // on revient dans le mode initial
