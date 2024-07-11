function c=pot(a,b)
%POT podnosi wejśćie do kwadratu pot(a)
%lub zadanego parametru pot(a,b)
%
if nargin<1
    error('Za mało argumentów')
elseif nargin==1
    c=a.^2;
elseif nargin==2
    c=a.^b; 
else
    error('Za dużo argumentów')
    
end
