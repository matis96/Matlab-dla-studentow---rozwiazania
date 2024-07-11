%LOSOWA skrypt tworzy macierz i ją przekształca zgodnie z zdaniem 3.1

N=input('Podaj wymiary macierzy, którą mam wygenerować: ');
clear A B
A=round(100*rand(N,N));

ile_liczb = 0; 
for i=1:N
    for j=1:N
        if A(i,j)<10
            A(i,j)=0;
        elseif A(i,j)>90
            A(i,j)=inf;
        elseif (A(i,j)>=30) & (A(i,j)<=50)
            ile_liczb=ile_liczb+1;
            B(ile_liczb)=A(i,j);
        end
    end
end

disp('Macierz losowa A');
disp(A); 
disp(strcat(['Macierz zawiera ', num2str(ile_liczb),...
    ' liczb z przedziału <30;50> :']));
disp(B);
