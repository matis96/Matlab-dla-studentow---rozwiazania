%Przyklad 8_1 oblicza rząd, wyznacznik 
% oraz wartości i wektory własne macierzy

A= [1 2 4; 1 1 2; 1 -1 3];
disp(['Rząd macierzy A wynosi: ', num2str(rank(A))])
disp(['Wyznacznik równa się: ', num2str(det(A))])
[V,D] = eig(A); 
disp('Wartości własne: '); disp(diag(D))
disp('Wektory własne: '); V
disp('Sprawdzam,czy to są naprawdę wektory własne')
for i=1:3
    lambda=D(i,i)
    W=V(:,1)
    norma=norm(A*W-lambda*W); 
    disp(['A*W-lambda*W = ', num2str(norma)]); 
end
