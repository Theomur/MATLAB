while 1
    men = menu ('Лабораторная работа №1', 'Вход', 'Выход');
    switch men
        case 1
            %ЦФ - 2, ИХ - 1
            x = 0.1;
            ih = [1;0.79;0.57;0.36;0.22;0.14;0.07;0;0;0;0;0];
            imp = [1;0;0;0;0;0;0;0;0;0;0;0];

            [b,a] = prony(ih,2,1);
            ih2 = impz(b,a,12);
            f = filter(b,a,imp);

            subplot(3, 1, 1);
            bar(ih, x);
            grid on;
            title('График ИХ через ЦФ');
            xlabel('n');
            ylabel('h(n)');

            subplot(3, 1, 2);
            bar(ih2, x);
            grid on;
            title('График ИХ после обработки функцией impz');
            xlabel('n');
            ylabel('h(n)');

            subplot(3, 1, 3);
            bar(f, x);
            grid on;
            title('График ИХ после обработки функцией filter');
            xlabel('n');
            ylabel('h(n)');
        case 2
            break;
    end
end