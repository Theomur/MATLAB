Ts = 1;  % Длительность сигнала в секундах
Fd = 100;  % Частота дискретизации 100 Гц
t= 0:0.01:1;  % Временная ось

% Амплитуды и частоты сигналов
U1 = 2;
U2 = 3;
f1 = 16;
f2 = 33;

% Формирование смеси сигналов
signal1 = U1*sin(2*pi*f1*t);
signal2 = U2*sin(2*pi*f2*t);
mixture = signal1 + signal2;

%фильтры

filteredSignalLow = filter(Hdlow, mixture);
filteredSignalHigh = filter(Hdhigh, mixture);

% FFT анализ сигнала
fft_result = fft(mixture);

% амплитудный спектр
amplitude_spectrum = abs(fft_result);

% вектор частот
N = length(mixture);
frequencies = (0:N-1) * (Fd / N);

% график амплитудного спектра
subplot(3,1,1);
plot(frequencies, amplitude_spectrum);
xlabel('Частота (Гц)');
ylabel('Амплитуда');
title('FFT Спектр сигнала');

%2
fft_result2 = fft(filteredSignalLow);

amplitude_spectrum = abs(fft_result2);

N = length(filteredSignalLow);
frequencies = (0:N-1) * (Fd / N);

subplot(3,1,2);
plot(frequencies, amplitude_spectrum);
xlabel('Частота (Гц)');
ylabel('Амплитуда');
title('FFT Спектр сигнала lowpass');

%3
fft_result3 = fft(filteredSignalHigh);

amplitude_spectrum = abs(fft_result3);

fs = 100;
N = length(filteredSignalHigh);
frequencies = (0:N-1) * (Fd / N);

subplot(3,1,3);
plot(frequencies, amplitude_spectrum);
xlabel('Частота (Гц)');
ylabel('Амплитуда');
title('FFT Спектр сигнала highpass');

disp("Для фильтра низких частот");
[b1, a1] = Hdlow.tf;
disp("b1: ");
disp(b1);
disp("a1: ");
disp(a1);

disp("Для фильтра высоких частот")
[b2, a2] = Hdhigh.tf;
disp("b2: ");
disp(b2);
disp("a2: ");
disp(a2);


signalAnalyzer(mixture, filteredSignalHigh, filteredSignalLow);
