while 1
    upr=menu('Меню','Ввод','Расчет','Вывод','Выход')
    switch upr
        case 1
            n = input('Введите порядок: ');
            m = input('Введите количество неравенств: ');
            k = input('Введите количество равенств: ');
        case 2
            A1 = rand(m, n);
            b1 = rand(m, 1);
            A2 = rand(k, n);
            b2 = rand(k, 1);
            c = ones(n, 1);
            xm = [-5;-5;-5;-5;-5;-5];
            xM = [5;5;5;5;5;5];
            exit = -1;
            if m == 0
                while exit ~= 1
                    [x,C,exit]=linprog(c, [], [], A2, b2, xm, xM);
                    if exit ~= 1
                        disp('Неравенство равно 0. Частная задача 1');
                        A2 = rand(k, n);
                        b2 = rand(k, 1);
                    end
                end
            elseif k == 0
                c = c * -1;
                while exit ~= 1
                    [x,C,exit]=linprog(c, A1, b1, [], [], zeros(n,1));
                    if exit ~= 1
                        disp('Равенство равно 0. Частная задача 2');
                        A1 = rand(k, n);
                        b1 = rand(k, 1);
                    end
                end
            else
                while exit ~= 1
                    [x,C,exit]=linprog(c, A1, b1, A2, b2, xm, xM);
                    if exit ~= 1
                        disp('Решение не найдено. Повторная попытка.');
                        A1 = rand(m, n);
                        b1 = rand(m, 1);
                        A2 = rand(k, n);
                        b2 = rand(k, 1);
                    end
                end
            end
        case 3
            disp('x:');
            disp(x);
            disp('C: ');
            disp(C);

        case 4
            disp('Выход')
            break
    end
end
