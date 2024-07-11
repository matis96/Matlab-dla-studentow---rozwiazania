function s = silnia(n)
%SILNIA wyznacza n!
%   SILNIA(N) wyznacza wartość iloczynu
%   liczba naturalnych od 1 do N. 
%   patrz także: FACTORIAL, PROD

if n<0 
    error 'Proszę podać liczbę naturalną.' 
elseif n==0
    s=1; 
else 
    s=1; 
    for i=1:n
        s=s*i; 
    end
end

