function [] = Temps(F)
%%  Greg McGlathery
%   ENG101-02
%   HW3 Temps
%
%   This function is called in the command line, i.e. Temps(70).  A temperature in
%   Fahrenheit is input and the function will convert Fahrenheit to
%   Celcius, Kelvin, and Rankine.

celsius = (F - 32)*(5/9);
kelvin = (F - 32)*(5/9)+273.15;
rankine = F + 459.67;

fprintf('A temperature of %.1f%cF converts to %.1f%cC, %.1fK and %.1f%cR.\n', F, char(176), celsius, char(176), kelvin, rankine, char(176));
