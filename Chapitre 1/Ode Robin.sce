function ydot = f(t, y),
    ydot = -y*t+t,
endfunction


y0=0;
t0=0;
t=0:0.1:4;
y=ode(y0,t0,t,f) //on appelle la fonction f avec f definit la equation differentielle
                 //y0 definit la valeur de l'equa dif
                 //t defini l'intervalle de la fonction.
plot(t,y)
