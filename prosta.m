function [A, B, C] = prosta(x1, y1, x2, y2)
%PROSTA funkcja oblicza współczynniki Ax+By+C=0
%przechodzącej przez dwa podane punkty
%o współrzędnych (x1,y1) i (x2,y2)

A=y2-y1;
B=x1-x2;
C=y1*x2-y2*x1;
