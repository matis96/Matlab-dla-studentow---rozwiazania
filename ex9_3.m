%PRZYKLAD9_3 skrypt sprawdza interpolację
%wielomiana Lagrange'a

funk=@(x) 1./(1+25*x.^2);
x=linspace(-1,1,201); y=funk(x);

ia=linspace(1,201,3);
ib=linspace(1,201,5);
ic=linspace(1,201,9);

xia=x(ia); yia=y(ia);
x1a=x; x1a(ia)=[];
ya=lagrange(xia,yia,x1a,2);

xib=x(ib); yib=y(ib);
x1b=x; x1b(ib)=[];
yb=lagrange(xib,yib,x1b,4);

xic=x(ic); yic=y(ic);
x1c=x; x1c(ic)=[];
yc=lagrange(xic,yic,x1c,8);

subplot(2,2,1)
fplot(funk, [-1,1])
ylim([-1.5 1.5])
title('funkcja interpolowana: 1/(1+25x^2)')

subplot(2,2,2)
fplot(funk, [-1,1]), hold on, plot(xia, yia, 'o')
plot(x1a,ya,'--')
ylim([-1.5 1.5])
title('funkcja interp.: wielomian rzedu 2')

subplot(2,2,3)
fplot(funk, [-1,1]), hold on, plot(xib, yib, 'o')
plot(x1b,yb,'--')
ylim([-1.5 1.5])
title('funkcja interp.: wielomian rzedu 4')

subplot(2,2,4)
fplot(funk, [-1,1]), hold on, plot(xic, yic, 'o')
plot(x1c,yc,'--')
ylim([-1.5 1.5])
title('funkcja interp.: wielomian rzedu 8')
