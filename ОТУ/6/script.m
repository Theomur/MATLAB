W = tf([5], [2 5 5 1]);
G = [5 1 0; 2 5 0; 0 5 1]; % Матрица Гурвица
% матрицы для расчёта диагональных определителей
G1 = G(1,1);
G2 = G(1:2,1:2);
G3 = G(1:3,1:3);
str1 = ['Δ1 = ', num2str(det(G1))];
str2 = ['Δ2 = ', num2str(det(G2))];
str3 = ['Δ3 = ', num2str(det(G3))];
disp(str1);
disp(str2);
disp(str3);

figure(1);
w = 0:0.01:3.1;
% характеристический полином системы
A1 = 2*(w*j).^3 + 5*(w*j).^2 + 5*w*j + 1;
plot(real(A1), imag(A1));
title("Кривая Михайлова");
xlabel("U = real(A1)");
ylabel("jV = jimag(A1)");
grid on;
set(gca, 'YAxisLocation', 'origin')
set(gca, 'XAxisLocation', 'origin')

figure(2);
w = 0:0.01:6;
W2 = (5)./(2*(w*j).^3 + 5*(w*j).^2 + 5*w*j + 1);
plot(real(W2),imag(W2)),
title('Диаграмма Найквиста');
xlabel( 'U = real(W)');
ylabel('jV = jimag(W)');
grid on;

figure(3);
bode(W);
grid on;
