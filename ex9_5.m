%PRZYKLAD9_5 wykorzystanie narzędzia Basic Fitting
%

t=linspace(0,10,10);    %momenty pomiaru 0,1,2,...,10
y=sin(0.5*t)+0.1*randn(size(t)); %wygenerowane dane pomiarowe z błędem losowym 
plot(t,y,'o');   %wykres surowych danych pomiarowych 

