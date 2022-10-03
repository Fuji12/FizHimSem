function [Pulseenergy, Capacitance, KZQurrentPower, AVGCurrent, Frequency, Period, ImpulseLenght, Thickness] = simple2 (height, coefficientB, coefficientK, IDLEvoltage, impulse )
%%Энергия импульса
Pulseenergy = ((20 * height * 10^-6)/(coefficientB^2 * coefficientK))^3;
%%Ёмкость
Capacitance = 2 * Pulseenergy / (0.75 * IDLEvoltage)^2;
%%Сила тока КЗ
KZQurrentPower = 0.2 + 8 * 10^5 * Capacitance;
%%Среднее значение силы тока
AVGCurrent = 0.5 * Capacitance;
%%Частота следования импульсов
Frequency = IDLEvoltage * AVGCurrent / Pulseenergy;
%%Период повторения и длительность импульсов
Period = 1 / Frequency;
ImpulseLenght = Period / impulse;
%%Толщина дефектного слоя
Thickness = 0.75 * coefficientB^2 * coefficientK * (Pulseenergy)^1/3;
