%ODCZYTAJ_V odczytuje plik z przeliczeniem m/s na km/h

p2=fopen('predkosci.txt', 'r'); %otwiera plik do odczytania
fscanf(p2, '%s%s',2);    %czyta nagłówek 
dane = fscanf(p2, '%d %f'); %czyta dane
dane = reshape(dane,2, length(dane)/2)' %formuje macierz Nx2
fclose(p2);