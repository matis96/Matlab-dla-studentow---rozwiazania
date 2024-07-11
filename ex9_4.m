%PRZYKLAD9_4 dopasowuje krzywą do danych pomiarowych 
%
x=[2 4 7 12 20]; 
y=[3 5 15 22 42]; 
figure, plot(x,y,'o'); 
a=polyfit(x,y,1); 
xt=0:25; 
yt=polyval(a,xt); 
hold on, plot(xt,yt,'r-')
legend('dane pomiarowe', 'dopasowanie')