%Exercise 5
%Construct a Lagrange interpolating polynomials for the data points given in table 1. 

%Soln:
%Let us take some random values of x (here x = [2.5 3 3.5 4 4.5] is taken) and see the corresponding y values using lagrange polynomial interpolation.
% LAGRANGE INTERPOLATION POLYNOMIAL
clc;
clear;
close all;
% SOLVED BY THP

dataX = 0:6;
dataY = [0 0.8415 0.9093 0.1411 -0.7568 -0.9589 -0.2794];
n = length(dataX);

x = [2.5 3 3.5 4 4.5];
for i = 1:length(x)
    sum = 0;
    for j = 1:n
        prod = 1;
        for k = 1:n
            if j ~= k
                prod = prod.*((x(i) - dataX(k))/(dataX(j)-dataX(k)));
            end
        end
        sum = sum + prod.*dataY(j);
    end
    y(i) = sum;
end
plot(dataX, dataY)
hold on
plot(x, y, 'o')
