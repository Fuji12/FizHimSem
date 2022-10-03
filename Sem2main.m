disp ('Данная программа предназначена для расчёта ключевых величина для процесса эльктроэрозионной обработки, вам будет предложено ввести величины. Учтите, что все они положительные, и проверяйте коректность ввода');
height= input('Укажите высоту микронеровностей:');
coefficientB= input('Укажите коэффициент перекрытия лунок:');
coefficientK= input('Укажите экспериментальный коэффициент:');
IDLEvoltage= input('Укажите напряжение холостого хода:');
impulse= input('Укажите скважность импусов:');

[Pulseenergy, Capacitance, KZQurrentPower, AVGCurrent, Frequency, Period, ImpulseLenght, Thickness] = simple2 (height, coefficientB, coefficientK, IDLEvoltage, impulse );

A = ['Энергия импульсов: ',num2str(Pulseenergy)];
B = ['Ёмкость: ',num2str(Capacitance)];
C = ['Сила тока КЗ: ',num2str(KZQurrentPower)];
D = ['Среднее значение силы тока: ',num2str(AVGCurrent)];
E = ['Частота следования импульсов: ',num2str(Frequency)];
F = ['Период повторения импульсов: ',num2str(Period)];
G = ['Длительность импульсов: ',num2str(ImpulseLenght)];
H = ['Толщина дефектного слоя: ',num2str(Thickness)];

disp (A)
disp (B)
disp (C)
disp (D)
disp (E)
disp (F)
disp (G)
disp (H)
