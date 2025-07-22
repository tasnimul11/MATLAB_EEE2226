%Exercise 3
% y = sin(x); x = 0:10; x(i) = 0:0.25:10;  Construct the interpolant y and plot. 
%Soln:

clc;
clear;
close all;

dataX = 0:10;           % x = 0:10
dataY = sin(dataX);    % y = sin(x)
n = length(dataX);

x = [0:0.25:10];    % x(i)

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
% SOLVED BY THP

plot(dataX, dataY)
hold on
plot(x,y,'o')
