%ZAD4_10

[x,y] = meshgrid(-pi/2:0.1:pi/2, -pi/2:0.1:pi/2); 
figure, subplot(2,1,1), contour(x,y,sqrt(x.^2+sin(x).*sin(y)+y.^2))
subplot(2,1,2), contour(x,y,sqrt(x.^2+sin(x.*y)+y.^2))