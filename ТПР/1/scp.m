% Оператор if с тремя условиями
x = input('Введите число x: ');
if x < 0
    disp('x меньше нуля');
elseif x == 0
    disp('x равно нулю');
else
    disp('x больше нуля');
end

% Оператор switch с тремя выборами
choice = input('Введите букву A, B или C ');

switch choice
    case 'A'
        disp('Выбран вариант A');
    case 'B'
        disp('Выбран вариант B');
    case 'C'
        disp('Выбран вариант C');
    otherwise
        disp('Выбран неизвестный вариант');
end