%Przyklad 8_2 Rozwiązuje dany układ równań liniowych 
A=[1,1,1; 1,2,3; 1,-1,1]
b=[3; 1; 2]
disp('Rozwiązuje układ równań liniowych Ax=b')
x=A\b
disp('Sprawdzam, czy to jest poprawne rozwiązanie')
c=A*x; disp(['A*x-b = ', num2str(norm(A*x-b))]); 