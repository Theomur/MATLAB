while 1
    men = menu ('Лабораторные работы', 'Лабораторная работа №1', 'Лабораторная работа №2', 'Лабораторная работа №3', 'Выход');
    switch men
        case 1
            % Введите порядок матрицы (количество строк и столбцов)
            n = input('Введите порядок матрицы: ');
            
            % Генерация случайной матрицы размера n x n
            random_matrix = randn(n);
            
            % Решение проблемы собственных чисел через спектр
            eigenvalues = eig(random_matrix);
            
            % Вывод матрицы и собственных чисел
            disp('Случайная матрица:');
            disp(random_matrix);
            disp('Собственные числа матрицы:');
            disp(eigenvalues);
            
            % Визуализация собственных чисел
            figure;
            plot(real(eigenvalues), imag(eigenvalues), 'o');
            title('Собственные числа случайной матрицы');
            xlabel('Действительная часть');
            ylabel('Мнимая часть');
            grid on;
        case 2
            while 1
                m= menu('Меню:','Ввод значений','Расчет','График','Выход');
                switch m
                    case 1
                        disp('Выберите вид функции принадлежности: 1 - Гауссова функции 2 -Колокольная функция ')
                        var=input('Тип функции: ' );
                        sigma = input('sigma = ');
                        r=input('Предел = ');
                        x = -r:0.1:r;
                        a=input('Значение числа (а) = ');
                        disp('Готово')
                    case 2
                        disp('Вычисляю:')
                        if var == 1
                            y1 = gaus(a, sigma, r)
                        elseif var == 2
                            y2 = bella(a, sigma, r)
                        end
                    case 3
                        graphics= menu('Меню:','Гауссова функции','Колокольная функция');
                        disp('Графики построены!')
                        switch graphics
                            case 1
                                hold on
                                figure(1)
                                plot(x,y1)
                                grid
                            case 2
                                hold on
                                figure(2)
                                plot(x,y2)
                                grid
                        end
                        xlabel('Нечеткое число')
                        ylabel('Функция Принадлежности')
                        disp('Готово')
                    case 4
                        disp ('Выход')
                        break
                end
            end
        case 3
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
        case 4
            break;
        
    end
end