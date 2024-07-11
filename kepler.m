function f=kepler(t,x)
f=zeros(4,1); 
r=sqrt(x(1)^2+x(2)^2); 
f(1)=x(3); 
f(2)=x(4); 
f(3)=-x(1)/r^3; 
f(4)=-x(2)/r^3; 