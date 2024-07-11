function argtype(x)
%ARGTYPE sprawdza czy argument jest macierzą, wektorem lub skalarem
%

[m,n] = size(x); 
if (m==1) & (n==1)
    disp('argument jest skalarem')
elseif ((m==1) | (n==1)) & m~=n
    disp('argument jest wektorem')
else
    disp('argument jest macierzą')
end

