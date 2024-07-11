function [t,y] = euler_wsteczna(f,tinit, yinit,tfinal,n)
%Wsteczna metoda Eulera

%obliczanie kroku
h=(tfinal-tinit)/n; 
%Prygotowanie wektorów początkowych t i y
t=[tinit zeros(1,n)]; y=[yinit zeros(1,n)]; 
%Obliczenia t i y
for i=1:n
    t(i+1)=t(i)+h; 
    ynew=y(i)+h*f(t(i),y(i));
    y(i+1)=y(i)+h*f(t(i+1),ynew); 
end

    