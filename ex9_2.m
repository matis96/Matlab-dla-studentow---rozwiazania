%PRZYKLAD9_2

clear all % wyczyszczenie pamięci
x=[-1 0 1 2 3];
y=[3 5 4 2 6];
%określenie punktów xi w których
% znajdujemy interpolowane wartości funkcji yi=f(xi);
xi=-1:0.2:3;
%interpolacja liniowa
yi_lin=interp1(x,y,xi, 'linear');
%interpolacja funkcjami sklejanymi 
yi_spline=interp1(x,y,xi, 'spline');
% wykresy
plot(x,y,'*',xi,yi_lin,':',xi,yi_spline,'--')
legend('węzły interpolacji ', 'interpolacja liniowa', 'funkcja sklejana')