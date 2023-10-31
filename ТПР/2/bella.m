function y2 = bella(a, sigma, r)
x = -r:0.1:r;
y2 = 1./(1+(sigma*(x-a)).^2)
