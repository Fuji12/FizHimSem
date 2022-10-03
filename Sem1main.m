disp ('Данная программа предназначена для расчёта ключевых величина для процесса гальванизации, вам будет предложено ввести величины. Учтите, что все они положительные, и проверяйте коректность ввода');
length= input('Укажите длину цилиндра:');
diametr1= input('Укажите первый диаметр:');
diametr2= input('Укажите второй диаметр:');
height= input('Укажите толщину покрытия:');
CurrentDens= input('Укажите плотность тока:');
TimeMin= input('Укажите время процесса:');
MaterialDens= input('Укажите плотность материала электролита:');
qurrent= input('Укажите электрохимический эквивалент металла:');
AverageVolt= input('Укажите среднее значение напряжения в ванне:');
if (length <= 0 || diametr1 <= 0 || diametr2 <= 0 || height <= 0 || CurrentDens <= 0 || TimeMin <= 0 || MaterialDens <= 0 || qurrent <= 0 || AverageVolt <= 0)
  disp ('Ошибка ввода данных, попробуйте снова')
  exit;
end
if (diametr1 == diametr2)
  disp ('Параметры данной фигуры не позволяют провести вычисление, проверьте ввод');
  exit;
end

[TimeHours, CurrentStr, CurrentDens, MassDiff, AverageVolt, height, CurrentOut,SqrALL] = simple (length, diametr1, diametr2, height, CurrentDens, TimeMin, MaterialDens, qurrent, AverageVolt);

A = ['Время процесса в часах: ',num2str(TimeHours)];
B = ['Сила тока процесса: ',num2str(CurrentStr)];
C = ['Плотность тока процесса ',num2str(CurrentDens)];
D = ['Привес детали: ',num2str(MassDiff)];
E = ['Среднее напряжение: ',num2str(AverageVolt)];
F = ['Толщина слоя: ',num2str(height)];
G = ['Выход по току: ',num2str(CurrentOut)];

disp (A)
disp (B)
disp (C)
disp (D)
disp (E)
disp (F)
disp (G)

