%ZAD4_7

[x, y] = meshgrid(0:0.01:2, 0:0.01:pi/2); 
z=(x.^3)/3+5-cos(y).^2;
figure, surf(x,y,z)