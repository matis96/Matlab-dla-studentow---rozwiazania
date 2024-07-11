%INTERPOLACJA skrypt testuje różne metody interpolacji 1-D
%

%-----------------interpolowana funkcja-------------------
f=@(x) 2.*sin(x)+sin(2.*x)+sin(3.*x+pi); 
%-----------------węzły interpolacji----------------------
x=[0:20];
y=f(x); 
%-----------------metody interpolacji---------------------
x_int=[0:0.1:20]; 
y_int1=interp1(x,y,x_int,'spline');
y_int2=interp1(x,y,x_int,'pchip');
y_int3=interp1(x,y,x_int,'nearest');
y_int4=interp1(x,y,x_int,'linear');
%---------------------wykresy------------------------------
subplot(4,1,1), plot(x,y,'*',x_int,y_int1,'-r')
hold on, fplot(f,[0,20])
title('Metoda funkcji sklejanych')
subplot(4,1,2), plot(x,y,'*',x_int,y_int2,'-r')
hold on, fplot(f,[0,20])
title('Metoda wielomaniów trzeciego stopnia')
subplot(4,1,3), plot(x,y,'*',x_int,y_int3,'-r')
hold on, fplot(f,[0,20])
title('Metoda najbliższego sąsiada')
subplot(4,1,4), plot(x,y,'*',x_int,y_int4,'-r')
hold on, fplot(f,[0,20])
title('Metoda funkcji liniowych')