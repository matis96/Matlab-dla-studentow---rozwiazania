%Przyklad13_3   Sprawdzamy prawa Keplera

x0=[1,0,0,0.8];
[t,x]=ode45('kepler',[0,10], x0); 
x1=x(:,1); 
x2=x(:,2); 
plot(x1,x2); 
