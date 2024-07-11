%Przyklad10_6 NEWTON
%skrypt wyznacza miejsce zerowe funkcji metodą Newtona

x0=input('Podaj przybliżenie miejsca zerowego = ');
eps=input('Podaj dokładność = ');
licznik=1;
pochodna=(funkcja(x0+eps/10)-funkcja(x0-eps/10))/(2*eps/10);
x1=x0-funkcja(x0)/pochodna;

while (funkcja(x1)>eps) | (abs(x1-x0)>eps)
    licznik=licznik+1;
    x0=x1;
    pochodna=(funkcja(x0+eps/10)-funkcja(x0-eps/10))/(2*eps/10);
x1=x0-funkcja(x0)/pochodna;
end
tekst=['L. iteracji: ',num2str(licznik),'. Miejsce zerowe: ', num2str(x0)];
disp(tekst)