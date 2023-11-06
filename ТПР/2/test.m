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
