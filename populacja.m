function [F] = populacja(t,y)
%model wzrostu populacji 
% Parametry rozrodczości i śmiertelności, zmienne globalne 
global r s 
F=(r-s)*y; 

