%PRZYKLAD9_6 dopasowanie krzywej wykładniczej 

t=[0 0.5 1 5 10 20]; 
P=[760 625 528 85 14 0.16]; %pierwotne dane 
Pp=log(P);                  %dane przekształcone 
a=polyfit(t,Pp,1);          %dopasowanie lin. do przekształcoych danych 
P0=exp(a(2));   %obliczanie stałej P0
T = -1/a(1);    %obliczanie stałej T
disp(['stała P0 = ', num2str(P0), ', stała T = ', num2str(T)])

%narysowanie wykresu w skali liniowej 
twyk=linspace(0,20,20);  %dane do wykresu 
Pwyk=P0*exp(-twyk/T); 
figure, subplot(2,1,1)
plot(t,P,'o', twyk, Pwyk, 'r-'), grid on
xlabel('czas t (s)'), ylabel('Cisnienie')
title('Wykres cisnienia w pompie')

%narysowanie wykresu w skali półlogarytmicznej 
Pwyk_log= exp(polyval(a,twyk)); %dane do wykresu półlogarytm. 
subplot(2,1,2)
semilogy(t,P,'o', twyk, Pwyk_log, 'r-'), grid on 
xlabel('czas t (s)'), ylabel('Cisnienie')
title('Wykres półlogarytmiczny cisnienia w pompie')


