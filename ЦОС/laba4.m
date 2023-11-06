rp = 0.1;
rs = 25;
ap = [28 62]/100;
as = [32 58]/100;
[N1,a0s] = cheb1ord(ap, as, rp, rs);
[b,a] = cheby1(N1,rp,a0s, 'stop');
h = freqz(b, a , 100);
plot(abs(h));
title('RF with Cheb first ord')
xlabel('frequenciec')
ylabel('K(w)')