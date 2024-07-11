%Cw11_2

t0=0; N0=50; tk=10; n=10; 

%Parametry rozrodczości i śmiertelnośći, zmienne globalne 
global r s
r=0.4; s=0.2; 
%Rozw. analityczne
te=linspace(t0,tk); 
ye=N0*exp((r-s)*te); 
%Rozw. numeryczne metodą Rungego-Kutty II rzędu 
h=(tk-t0)/n; %Obliczenie kroku 

%Przygotowanie wektorów początkowych t i y
t=[t0:h:tk]; y=[N0 zeros(1,n)]; 
%Obliczenia t i y
for i=1:n
k1=h*populacja(t(i), y(i)); 
k2=h*populacja(t(i)+h/2, y(i)+k1/2); 
y(i+1)=y(i)+k2; 
t(i+1)=t(i)+h; 
end

%R-K IV rzędu 
t_iv=[t0:h:tk]; y_iv=[N0 zeros(1,n)]; 
%Obliczenia t i y
for i=1:n
k1=h*populacja(t_iv(i), y_iv(i)); 
k2=h*populacja(t_iv(i)+h/2, y_iv(i)+k1/2); 
k3=h*populacja(t_iv(i)+h/2, y_iv(i)+k2/2);
k4=h*populacja(t_iv(i)+h/2, y_iv(i)+k3);
y_iv(i+1)=y_iv(i)+k1/6+k2/3+k3/3+k4/6; 
t_iv(i+1)=t_iv(i)+h; 
end

%euler_zwyczajny
t_eu=[t0:h:tk]; y_eu=[N0 zeros(1,n)]; 

for i=1:n
y_eu(i+1)=y_eu(i)+populacja(t_eu(i),y_eu(i)); 
t_iv(i+1)=t_iv(i)+h; 
end

%wykres 
plot(te,ye,'k-', t,y, 'b*:', t_iv,y_iv,'g*', t_eu,y_eu,'co-.')
xlabel('t')
ylabel('N(t)')
legend('Rozw.analityczne', 'Metoda R-K II rzędu','Metoda R-K IV rzędu', 'Met. Eulera zw.' )
title('Wykres rozwoju populacji') 