function [F] = oscylator_harm(t,y)
%t - czas

A=1.333; 
B=0.2; 
K=2.132; 
w=2; 
F=[y(2); -A*y(2)-K^2*y(1)+B*cos(w*t)]; 
