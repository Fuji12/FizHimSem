disp ('Данная программа предназначена для расчёта ключевых величина для процесса расчёта припуска Si пластины, вам будет предложено ввести величины. Учтите, что все они положительные, и проверяйте коректность ввода');
ratio1= input('Укажите коэффициент 1:');
ratio2= input('Укажите коэффициент 2:');
ratio3= input('Укажите коэффициент 3:');
ratio4= input('Укажите коэффициент 4:');
IngotLen= input('Укажите длину слитка:');
CutThikness= input('Укажите толщину реза:');

[TotalAllow, SimThick, NumOfPlatesfromIngot, SiInTrashCryst, SiInTrashPlate, NumChipsProd, NumPlatesInProd] = simple3 (ratio1, ratio2, ratio3, ratio4, IngotLen, CutThikness);

A = ['Суммарный припуск: ',num2str(TotalAllow)];
B = ['Исходная толщина заготовки: ',num2str(SimThick)];
C = ['Кол-во пластин из одного слитка: ',num2str(NumOfPlatesfromIngot)];
D = ['Кремний в отходы на кристалле: ',num2str(SiInTrashCryst)];
E = ['Кремний в отходы на пластины: ',num2str(SiInTrashPlate)];
F = ['Кол-во микросхем в производство: ',num2str(NumChipsProd)];
G = ['Кол-во пластин в производство: ',num2str(NumPlatesInProd)];

disp (A)
disp (B)
disp (C)
disp (D)
disp (E)
disp (F)
disp (G)
