function [TotalAllow, SimThick, NumOfPlatesfromIngot, SiInTrashCryst, SiInTrashPlate, NumChipsProd, NumPlatesInProd] = simple3 (ratio1, ratio2, ratio3, ratio4, IngotLen, CutThikness)
%Суммарный припуск, мкм
TotalAllow = (25 + ratio1 * 10) * 2 + (11 + 3 * ratio2) * 2 + (7 + ratio3 * 1) + (0 + ratio4 * 0.3);
%Исходная толщина, мм
SimThick = 1.5 + TotalAllow / 1000;
%Кол-во пластин из одного слитика
NumOfPlatesfromIngot = IngotLen / (SimThick + CutThikness);
%Кремний в отходына кристалл и пластину
SiInTrashCryst = (57.47 * 433 / pi * 100^2) * 100;
SiInTrashPlate = ((CutThikness * 433) / IngotLen) * 100;
%Выпуск пластин
NumChipsProd = (600000 * 100) / 81;
NumPlatesInProd = (NumChipsProd * 100) / SiInTrashCryst;  
