function [] = Qplot1(A,B,C)
%%  Greg McGlathery
%   ENG101-02
%   MATLAB EXAM
%   Due Date 10/12/2017
%
%   This function will take three input elements from the user to plot the
%   quadratic equation.  The inputs will reference A, B, and C in the
%   equation Ax^2+Bx+C

A = input('Enter your value for ''A''. \n');
B = input('Enter your value for ''B''. \n');
C = input('Enter your value for ''C''. \n');

X = sqrt(B.^2-4*A*C);
Y = 2*A;
Z = X/Y;

t = linspace(-5,5,20);   
    
    plot(Z, Y, r,'ob')
    str = sprintf('Plot of y = %dx{^2} + %dx + %d', A,B,C);
    title(str)
    xlabel('x')                                 % Plot and labels
    ylabel('y')