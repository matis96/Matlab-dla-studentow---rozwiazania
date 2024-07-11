%ZAD6_3

p2=fopen('temperatury.txt', 'r'); %otwiera plik do odczytania
fscanf(p2, '%s%s',2);    %czyta nagłówek 
dane = fscanf(p2, '%d %f'); %czyta dane
dane = reshape(dane,2, length(dane)/2)' %formuje macierz Nx2
fclose(p2);