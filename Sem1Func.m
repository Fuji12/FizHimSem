function [TimeHours, CurrentStr, CurrentDens, MassDiff, AverageVolt, height, CurrentOut,SqrALL] = simple (length, diametr1, diametr2, height, CurrentDens, TimeMin, MaterialDens, qurrent, AverageVolt)
    %% Первый этап: расчёт площади поверхности детали
    if (diametr1 > diametr2)   
        SqrTorc = pi/4 * (diametr1^2 - diametr2^2);
        SqrIN = pi * diametr2 * length;
        SqrOUT = pi * diametr1 * length;
    else
        SqrTorc = pi/4 * (diametr2^2 - diametr1^2);
        SqrIN = pi * diametr1 * length;
        SqrOUT = pi * diametr2 * length;
    end

      SqrALL = SqrTorc * 2 + SqrIN + SqrOUT;
    %% Второй этап: прирост массы
      MassDiff = SqrALL * height * MaterialDens * 10^-12;
    
    %% Третий этап: сила тока
      CurrentStr = CurrentDens * SqrALL * 10^-4;
    %% Четвёртый: время в часах
      TimeHours = TimeMin / 60;
    %% Пятый этап: выход по току
      CurrentOut = (MassDiff * 10^5) / (qurrent * CurrentStr * TimeHours);  


