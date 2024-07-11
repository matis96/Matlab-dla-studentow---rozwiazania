%Przykład10_4
%Skrypt wyznaczający wartość całki metodą trapezów 

a=0; %dolna gr. całkowania
b=pi; %górna gr. całkowania
n=input('Podaj liczbę przedziałów: '); 
h=(b-a)/n; %długość przedziału 
x=a:h:b; %węzły 
y=MojaFunkcja(x); %wartości w węzłach 
calka=h*(sum(y(2:n))+(y(1)+y(n+1))/2); %wzór trapezów
tekst=strcat(['wartość całki obliczona metodą trapezów:',num2str(calka)]);
disp(tekst);
ezplot('MojaFunkcja',[0 pi]);