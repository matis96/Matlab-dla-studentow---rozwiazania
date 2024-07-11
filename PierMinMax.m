%PierMinMax skrypt oblicza miejsca zerowe funkcji 
%   y=exp(x.*sin(x)-2.*x.*x
% oraz minimum i maksimum

%----------------miesca zerowe-------------------
y=@(x) exp(x).*sin(x)-2.*x.*x; 
x0_1=fzero(y,1); 
x0_2=fzero(y,6); 
x0_3=fzero(y,0); 
disp(strcat(['Pierwiastki funkcji to: ',num2str(x0_1), ' ,',num2str(x0_2), ' ,',num2str(x0_3), ' .']))
%--------------rysuje wykres---------------------
fplot(y, [-2,6.5], '-b')
hold on
y1=@(x) 0; 
fplot(y1, [-2,6.5], '-r')
plot(x0_1,0,'*m', x0_2,0,'*m',x0_3,0,'*m')
%-----------oblicza minimum i maksimum-----------
x_min=fminbnd(y,5,6); 
y_max=@(x) -exp(x).*sin(x)+2.*x.*x;
x_max=fminbnd(y_max,0,1.5); 
disp(strcat (['Dla x= ', num2str(x_min), ' funkcja osiąga minimum lokalne w przedziale <5;6> równe ' , num2str(y(x_min))]))
disp(strcat (['Dla x= ', num2str(x_max), ' funkcja osiąga maksimum lokalne w przedziale <0,1.5> równe ',num2str(y(x_max))]))
    