function [A, B, C] = prosta1(P1, P2)
%PROSTA1 oblicza współczynniki prostej Ax+By+C=0 
%przechodzącej przez dwa punkty P1 i P2 traktowane jako 
%dwuelementowe wektory kolumnowe [x1;y1] i [x2;y2]
%sprawdzana jest poprawność danych  wejściowych

if nargin<2
    error('podano za mało argumentów')
end

[m1, n1] = size(P1); 
[m2, n2] = size(P2); 

if nargin ==2
    if ~(m1==2 & n1==1) 
    error('P1 nie jest dwuelementowym wektorem kolumnowym')
    elseif  ~(m2==2 & n2==1)
        error('P2 nie jest dwuelementowym wektorem kolumnowym')
    else
      A = [0 1] * (P2-P1); 
      B = [1 0] * (P1-P2);
      C = -det([P1,P2]); 
    end
else
    error('Za dużo argumentów. Proszę podać dwa 2-elementowe wektory kolumnowe')
end

    