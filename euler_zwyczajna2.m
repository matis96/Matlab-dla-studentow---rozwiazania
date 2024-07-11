function [u,z] = euler_zwyczajna2(f,tinit, yinit,tfinal,n)
%Zwyczajna metoda Eulera

%obliczanie kroku
h=(tfinal-tinit)/n; 
%Prygotowanie wektorów początkowych t i y
u=[tinit zeros(1,n)]; z=[yinit zeros(1,n)]; 
%Obliczenia t i y
for i=1:n
    u(i+1)=u(i)+h; 
    z(i+1)=z(i)+h*f(u(i), z(i)); 
end