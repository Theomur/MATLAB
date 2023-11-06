while 1
    men = menu ('Лабораторные работы', 'Лабораторная работа №1', 'Лабораторная работа №2', 'Лабораторная работа №3', 'Лабораторная работа №4', 'Лабораторная работа №5', 'Выход');
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
            break;
        case 4
            break;
        case 5
            break;
        case 6
            break;
    end
end