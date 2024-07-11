%ZAD4_4 rozwiązuje zadanie 4.4

N=input('Podaj w ilu punktach obliczać funkcję:');

x=logspace(-1, 3, N);
y=exp(sin(x)); 

figure
semilogx(x, y, 'r-')
xlabel('wartosci x')
ylabel('wartosci y')
title('y=e^{sin(x)}')