%ZAD4_2 rozwiązuje zadanie 4.2

N=input('Podaj w ilu punktach obliczać funkcję:');
t=linspace(0,20,N);
A1=2; B1=3; y1=A1*exp(B1*sin(t)); 
A2=1; B2=-3; y2=A2*exp(B2*sin(t)); 

figure
plot(t, y1, 'k-', t, y2, 'b:')
grid on 
xlabel('czas t')
ylabel('wykres y(t)')
title('y(t)=Ae^{(B*sin(t)}')
legend('dla A=2 i B=3', 'dla A=1 i B=-3')
