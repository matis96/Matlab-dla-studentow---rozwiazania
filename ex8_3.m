%Przyklad 8_3 Faktoryzacja lu i qr macierzy A
A=[2,3,1; 2,4,2; 1,2,3]
disp('Rozkład LU')
[L,U] = lu(A)
disp('L*U='); disp(L*U);
disp(['A-L*U = ', num2str(norm(A-L*U))])
disp('Rozkład QR')
[Q, R]=qr(A)
disp('Q*R='); disp(Q*R);
disp(['A-Q*R = ', num2str(norm(A-Q*R))])
disp('macierz Q jest ortogonalna, ponieważ Q*Q''=I')
disp('Q*Q''='); I=Q*Q'; disp(I)