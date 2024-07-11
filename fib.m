function [F] = fib(n,metoda)
%FIB oblicza n-ty wyraz ciągu Fibonacciego 
%metoda 1 - wzór rekurencyjny
%metoda 2 - wzór Bineta 

switch metoda
    
    case 1 
        chuj0=0; 
        chuj1=1;
        for i=2:n
            chuj2=chuj1+chuj0; 
            chuj0=chuj1; 
            chuj1=chuj2;
        end
        F=chuj2;
    case 2
        F=(((1+sqrt(5))/2)^n-((1-sqrt(5))/2)^n)/sqrt(5);
end
