%ZAD4_9

[x,y] = meshgrid(-pi:0.2:pi, -pi:0.2:pi);
z= x.*y.*sin(x).*cos(y); 
figure, surfc(x,y,z)
