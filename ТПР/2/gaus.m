function y1 = gaus(a, sigma, r)
x = -r:0.1:r;
y1 = exp((-(((x-a)/sigma).^2)));
