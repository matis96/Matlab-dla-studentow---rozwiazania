%PROST objętość prostopadłościanu
%Skrypt oblicza objętość prostopadłościanu 
%o zadanych długościach krawędzi
%w zdefiniowanych przez użytkownika jednostkach. 

%powitanie 
disp('Obliczam objętość prostopadłościanu')
%pytanie o jednostki 
jed=input('Podaj jednostki długości = ', 's');
%pytanie o wymiary 
disp('Podaj wymiary:')
a=input('długość = '); 
b=input('szerokość = '); 
c=input('wysokość = '); 
%obliczenie objętości
obj=a*b*c; 
%wyświetlanie wyniku 
disp(strcat(['objętość wynosi ', num2str(obj),' ', jed, '3']))

