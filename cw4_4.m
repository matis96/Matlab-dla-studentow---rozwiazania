%CW4_4

figure(1)
clear x y z;
[X, Y ]= meshgrid(-5:.5:5, -5:.5:5); 
Z = (X - Y).*(X+Y) + exp(sqrt(X.^2+Y.^2));
subplot(2,2,1), mesh(X,Y,Z)

clear x y z;
[X, Y ]= meshgrid(-3:.2:3, -3:.2:3); 
Z = exp(-(X-1).^2-Y.^2) + exp(-(X+1).^2-Y.^2);
subplot(2,2,2), meshc(X,Y,Z)

clear x y z;
[X, Y ]= meshgrid(1:.5:10, 1:.5:10); 
Z = (X-5).^2 - (Y-5).^2;
subplot(2,2,3), surf(X,Y,Z)

clear x y z;
[X, Y ]= meshgrid(-pi:.2:pi, -pi:.2:pi); 
Z = exp(cos(X)).*exp(cos(Y));
subplot(2,2,4), surfc(X,Y,Z)
