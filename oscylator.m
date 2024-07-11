function [F] = oscylator(t,y)
%t - czas
A=1.3333; %stała
K=2.132; %stała
F=[y(2); -A*y(2)-K^2*y(1)]; 