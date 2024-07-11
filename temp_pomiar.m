%temp_pomiar skrypt generuje dane pomiarowe

t=[0:0.25:24]'; %czas od północy do północy co kwadrans
temp = -cos(2*pi*t/24)*5+0.5*randn(size(t)); 
pomiary= [t temp]; 
save pomiary.dat pomiary -ascii
clear all 
load pomiary.dat
czas=pomiary(:,1); 
temperatura = pomiary(:,2); 
plot(czas, temperatura)
