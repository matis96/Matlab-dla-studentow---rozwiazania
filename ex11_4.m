%Przyklad11_4

%Rozwiązanie analityczne 

te=0:0.01:0.5; 
ye=sqrt(te.^2+1); 
f=inline('(t./y)'); 
%Rozwiązania numeryczne 

[t1,y1]=euler_zwyczajna(f,0,1,0.5,10); 
[t2,y2]=euler_wsteczna(f,0,1,0.5,10); 
[t3,y3]=euler_ulepszona(f,0,1,0.5,10); 

%wykres
plot(te,ye,'b*', t1,y1,'k-.', t2,y2,'g*', t3, y3, 'k--')
xlabel('t') %Rozwiązuje metodami Eulera i porównuje z rozw
ylabel('y')
legend('Rozw.analityczn.', 'Zwykla', 'wsteczna', 'ulepszona')
axis([0 0.3 1 1.07])