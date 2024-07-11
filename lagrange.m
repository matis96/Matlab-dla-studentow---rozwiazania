function [y] = lagrange(xj,yj,x,n)
%LAGRANGE wzór interpolacyjny Lagrange'a
% interpolacyjnego stopnia n w dowolnym punkcie x
% dla węzłów xj i odpowiadających im 
% wartości funkcji interpolowanej yj. 
%
%np.: y=lagrange([1 2 3], [1 2 3], 1.7, 2) daje y=1.7

omega_w=1; s=0; 
for j=1:n+1
    omega_w=omega_w.*(x-xj(j)); 
    omega_p=1; 
    for i=1:n+1
        if i~=j 
            omega_p=omega_p.*(xj(j)-xj(i)); 
        end
    end
    s=s+yj(j)./(omega_p.*(x-xj(j))); 
end
y=omega_w.*s; 