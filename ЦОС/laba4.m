fd = 200;
f0 = 60;

[n1, a0] = ellipord(f0/fd*2, f0/fd*2 - 0.3, 1.5, 20);
[b, a] = ellip(n1, 1.5, 20, f0/fd*2, "high");

w = freqz(b, a, 100);
wm_freq = abs(w);


plot(wm_freq);
title('АЧХ');
xlabel('Частота');
ylabel('Коэф усиления');
