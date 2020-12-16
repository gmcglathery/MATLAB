function [a,b,c,d] = Piece(z,varargin)
%%  Greg McGlathery
%   ENG101-02
%   MATLAB EXAM
%   Due Date 10/12/2017
%   This function takes an input from the user and outputs four values.
%   The function checks each input value against conditionals.

x1 = sum(z);
x2 = mean(z/4);
x3 = min(z);


fprintf('The average of the output is %.3d\n', x2)
fprintf('The minimum value of the function is %.2d\n', x3)

r = [z]


 if r < 0
     a = (exp(r));
 end
 if r >= -1 && z <= 1
     b = (sqrt(r))
 end
 if r >= 1 && z <= 10
     c = (log10(r))
 end
 if r > 10
     d =(sind(r))
 end
