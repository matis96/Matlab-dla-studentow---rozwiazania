%Przyklad11_5
%Rozwiązuje równanie wzrostu populacji metodą Rungego-Kutty
% i porównuje z rozw. analitycznym

%Zdefiniowanie parametrów: czas początkowy, populacja początkowa, 
%czas końcowy, liczna podziałów 

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
%wykres 
plot(te,ye,'k-', t,y, 'b*:')
xlabel('t')
ylabel('N(t)')
legend('Rozw.analityczne', 'Metoda R-K')
title('Wykres rozwoju populacji') 