%ZAD4_3 rozwiązuje zadanie 4.3

N=input('Podaj w ilu punktach obliczać funkcję:');
t=linspace(0,10,N);
y=cos(t).*exp(sin(t)); 

figure
subplot(2,2,1), plot(t,y)
axis auto 

subplot(2,2,2), plot(t,y)
axis equal 

subplot(2,2,3), plot(t,y)
axis image

subplot(2,2,4), plot(t,y)
axis off