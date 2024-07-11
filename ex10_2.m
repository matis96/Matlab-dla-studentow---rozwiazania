%Przykład10_2 Obliczanie całki podwójnej za pomocą funkcji dblquad 

x=[0:pi/10:2*pi];
y=[0:pi/10:2*pi];
[x,y]=meshgrid(x,y); 
z=y.*sin(x).^2+x.*cos(y).^2; 
surf(x,y,z); 
Q = dblquad(inline('y.*sin(x).^2+x.*cos(y).^2'), 0, 2*pi, 0, 2*pi); 
disp(['Wartość całki podwójnej wynosi ', num2str(Q)])