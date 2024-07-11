%Przyklad11_1

[t,y] = ode45('oscylator', [0 10], [1;0]); 
plot(t,y(:,1),'-', t,y(:,2), '--'); 
legend('polozenie', 'predkosc'); 