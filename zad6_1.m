%ZAD6_1

[x,y]=meshgrid(0:0.2:2*pi, 0:0.2:2*pi); 
save tablica.mat x y
clear x y 
load tablica.mat
surf(sin(x).*cos(y))