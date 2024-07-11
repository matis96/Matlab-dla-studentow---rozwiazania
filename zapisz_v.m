%ZAPISZ_V zapisuje plik z przeliczeniem m/s na km/h

X=0:100;
Y=X*3600/1000;
p1=fopen('predkosci.txt', 'w');     %otwiera plik do pisania
fprintf(p1, '%4s%10s\n', 'm/s', 'km/h'); %wpisuje nagłówek
fprintf(p1, '%4d %8.2f\n', [X;Y]);  %zapisuje dane
fclose(p1);