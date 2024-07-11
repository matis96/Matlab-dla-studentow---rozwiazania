%%ZAD4_1 rozwiązuje zadanie 4.1

Wybor = input('Wybierz: 0 -trzy funkcje na jednym wykresie; 1-funckje na osobnych wykresach ');
N=input('W ilu punktach podzielić przedział <0, 2pi> : ');
x=linspace(0, 2*pi, N); 

figure
switch Wybor
    case 0 
    plot(x, sin(x), 'r-', x, sin(x).^2, 'b--', x, sin(x).^3, 'k:')     
    
    case 1
        subplot(3,1,1), plot(x, sin(x), 'r-')
        subplot(3,1,2), plot(x, sin(x).^2, 'b--')
        subplot(3,1,3), plot(x, sin(x).^3, 'k:')
end
