%SZYBKI_SINUS porównuje szybkość obliczania funckji sin(x)

disp('Porównam szybkość obliczania funkcji sin(x) w N punktach'); 
clear x y;
disp('Porównam szybkość obliczania funkcji sin(x) w N-punktach');
N=input('Podaj wartość N : '); 
dx=2*pi/N; 
%wykorzystanie pętli for 

disp('Wykorzystująć pętlę for :'); 
tic
for i=1:N
    x(i)=dx*(i-1);
    y(i)=sin(x(i)); 
end
toc

clear x y; 

disp('Wykorzystując wektoryzację :'); 
tic
x=0:dx:2*pi;
y=sin(x); 
toc