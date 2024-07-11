function stat_graf(x,y)
%STAT_GRAF funkcja rysuje dwa wykresy y=f(x)
%górny wykres jest czerowną linią ciągłą
%a dolny wykresem punktowym z dodaną linią
%wartości średniej. 

[m1,n1] = size(x); 
[m2,n2] = size(y);

if (size(x)==size(y)) & ((n1==1) | (m1==1))
figure
subplot(2,1,1)
plot(x,y, 'r-')

subplot(2,1,2)
plot(x,y,'bo')
hold on
plot(x, mean(y)*ones(size(y)), 'g-')

else
    error('Proszę podać prawidłowe argumenty')
end
