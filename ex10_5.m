%Przyklad10_5
%Skrypt wyznaczający wartość całki metodą parabol (Simpsona)

a=0;    %dolna granica całkowania
b=pi;   %górna granica całkowania
n=input('Podaj liczbę przedziałów (musi być parzysta): ');
h=(b-a)/n; %długość przedziału 
x=a:h:b;    %węzły
y=MojaFunkcja(x);   %wartości w węzłach 
parz=2:2:n;     %parzyste
nparz=3:2:n-1;  %nieparzyste bez pierwszego i ostatniego 
%wzór parabol 
calka=h/3*(y(1)+4*sum(y(parz))+2*sum(y(nparz))+y(n+1)); 
tekst=strcat(['Całka metodą Simpsona: ',num2str(calka)]); 
disp(tekst); 
ezplot('MojaFunkcja', [0,pi])