clc;
clear;
close all;

dataX = 0:6;
dataY = [0 0.8415 0.9093 0.1411 -0.7568 -0.9589 -0.2794];
n = length(dataX);

x = [2.5 3 3.5 4 4.5];

for i = 1:length(x)
    for j = 1:n-1
        if dataX(j)<=x(i) && dataX(j+1)>=x(i)
            x1 = dataX(j);
            x2 = dataX(j+1);
            y1 = dataY(j);
            y2 = dataY(j+1);
        end
    end
    y(i) = ((x(i)-x2)/(x1-x2))*y1 + ((x(i)-x1)/(x2-x1))*y2;         

end

plot(dataX, dataY)
hold on
plot(x,y,'o')
