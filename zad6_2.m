%zad6_2

C=0:100; %stopnie celsjusza
F=9*C/5+32; %Fahrenheit

p1=fopen('temperatury.txt', 'w'); 
fprintf(p1, '%4s%8s\n', '°C', '°F'); %wpisuje nagłówek
fprintf(p1, '%4d %8.2f\n', [C;F]);  %zapisuje dane
fclose(p1);