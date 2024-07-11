function [min, max, sre] = stat(u)
%STAT funckaj oblicza minimum, maksimum
%oraz średnią wektora u. 
%
%Patrz także: MIN, MAX, MEAN

n=length(u);
min=minimum(u);
max=maksimum(u,n);
sre=srednia(u,n);

function mi = minimum(x)
%Oblicza najmniejszy element wektora x
x2=sort(x); mi=x2(1);

function ma=maksimum(x,y)
%Oblicza największy elemetn wektora x o y elementach 
x2=sort(x); ma=x2(y);

function sr=srednia(x,y)
%Oblicza średnią wartość y elementów wektora x 
sr=sum(x)/y;

