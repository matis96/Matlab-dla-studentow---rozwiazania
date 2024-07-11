%ZAD5_7
figure
subplot(2,1,1), ezmesh('x.^2/2+5-sin(x).*cos(y)', [-2, 2, -2*pi, 2*pi])
subplot(2,1,2), ezcontour('x.^2/2+5-sin(x).*cos(y)', [-2, 2, -2*pi, 2*pi])