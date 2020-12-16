function [] = plot_line(slope,y_int,xmin,xmax)
%%  Greg McGlathery
%   ENG101-02
%   HW3 num_roman
%   Due Date 10/10/2017
%
%   This function will take 4 inputs from the user in order to determine
%   the values for a line.  It has defaults in place in case some inputs
%   are left blank.  At a minimum, two inputs must be given.  This function
%   will also graph and plot on the range given for xmin and xmax.
%   


slope = input('Enter the slope\n');             % slope
y_int = input('Enter the y intercept\n');       % y intercept
xmin = input('Enter the minimum x value\n');    % minimum x value

if isempty(xmin)                                % setting default value for xmin, if empty
     xmin = 0;
end

xmax = input('Enter the maximum x value\n');    % maximum x value

if isempty(xmax)                                % setting default value for xmax, if empty
     xmax = xmin + 10 ;
end
    x = linspace(xmin,xmax);                    % x axis interval
    y = (slope*x) + y_int;                      % equation of the line, and title 
    plot(x,y)
    str = sprintf('Line Plot of y = %dx + %d', slope,y_int);
    title(str)
    xlabel('x')                                 % Plot and labels
    ylabel('y')
end
