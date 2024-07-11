%Przyklad10_3
%Skrypt wyznaczający wartość całki metodą prostokątów 

a=0; %dolna granica całkowania
b=pi; %górna granica całkowania
n=input('Podaj liczbę przedziałów: '); 
h=(b-a)/n;  %długość przedziału 
x=(a+h/2):h:(b-h/2); %węzły 
y=MojaFunkcja(x); %wartości w węzłach 
calka=h*sum(y); %wzór prostokątów 
tekst=strcat(['wartość całki obliczona met.prostokątów: ', num2str(calka)]); 
disp(tekst); 
ezplot('exp(x).*sin(x).^2+x.^2',[0 pi]); 

