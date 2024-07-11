%Przykład11_1
%Skrypt rozwiązuje równanie różniczkowe pierwszego rzedu

MojaFunkcja=@(t,y) 2*t.^2.*exp(-y);
[t,y]=ode45(MojaFunkcja,[0 2*pi], 0);
plot(t,y)

