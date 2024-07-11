function y = klamra(x)
%KLAMRA funkcja obliczana wzorem z klamrą
n=max(size(x)); 
for i=1:n
    if x(i)<=-2 | x(i)>=2
        y(i)=x(i)^2-4;
    else
        y(i)=-abs(x(i))+2;
    end
end

