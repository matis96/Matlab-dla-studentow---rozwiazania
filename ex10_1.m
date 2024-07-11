%PRZYKŁAD10_1 Całkowanie numeryczne za pomocą metod quad i quad1

calka=quad('sin(x.^3)',0,pi); 
tekst=strcat(['wartość całki obliczona metodą quad: ', num2str(calka)]); 
disp(tekst); 

calka=quadl('sin(x.^3)',0,pi); 
tekst=strcat(['wartość całki obliczona metodą quadl: ', num2str(calka)]); 
disp(tekst); 

calka=quad('cos(x)',0,pi); 
tekst=strcat(['wartość całki obliczona metodą quad: ', num2str(calka)]); 
disp(tekst); 

calka=quadl('cos(x)',0,pi); 
tekst=strcat(['wartość całki obliczona metodą quadl: ', num2str(calka)]); 
disp(tekst); 

