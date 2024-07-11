%sinusik tablicuje funkcję sinus i zapisuje w pliku 

x=0:0.2:2*pi; 
y=sin(x); 
save sinusik.mat x y
clear x y 
load sinusik.mat
plot(x,y,'r-')