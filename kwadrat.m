%KWADRAT Pierwiastki równania postaci y=a*x^2+b*x+c

disp('Podaj współczynniki równania y=a*x^2+b*x+c')
a=input('a= ')
b=input('b= ')
c=input('c= ')

delta=b^2-4*a*c; 
x1=b-sqrt(delta)/2*a; 
x2=b+sqrt(delta)/2*a;

if delta>0
    str1=['Pierwiastki rzeczywiste równania: ', ...
        num2str(a), '*x^2+', num2str(b), '*x+', num2str(c), ':'];
else 
    str1=['Pierwiastki zespolone równania: ', ...
        num2str(a), '*x^2+', num2str(b), '*x+', num2str(c), ':'];
end

str2=['x1= ', num2str(x1)];
str3=['x2= ', num2str(x2)];

komunikat=str2mat(str1, str2, str3); 

disp(komunikat)

