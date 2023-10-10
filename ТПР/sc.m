while 1
    men = menu ('Лабораторные работы', 'Лабораторная работа №1', 'Лабораторная работа №2', 'Лабораторная работа №3', 'Лабораторная работа №4', 'Лабораторная работа №5', 'Выход');
    switch men
        case 1
            % Введите порядок матрицы (количество строк и столбцов)
            n = input('Введите порядок матрицы: ');
            
            % Генерация случайной матрицы размера n x n
            random_matrix = randn(n);
            
            % Решение проблемы собственных чисел
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
            break;
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