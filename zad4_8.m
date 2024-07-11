%ZAD4_8

[x,y] = meshgrid(-pi:0.2:pi, -2:0.2:2); 
z=(x.^2)/4+1-sin(x).*cos(y); 


figure
surfc(x,y,z)

figure
meshc(x,y,z)