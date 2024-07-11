%EX5_1

subplot(2,1,1)
fplot('exp(-x/10).*sin(x)', [0 50])
title('Wykres za pomocą polecenie fplot')
xlabel('x'), ylabel('f(x)=e^{-x/10}sin(x)')
subplot(2,1,2)
x=0:50; y=exp(-x/10).*sin(x); plot(x,y)
title('Wykres za pomocą polecenie plot')
xlabel('x'), ylabel('f(x)=e^{-x/10}sin(x)')