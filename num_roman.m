function ans = num_roman()
%%  Greg McGlathery
%   ENG101-02
%   HW3 num_roman
%   Due Date 10/10/2017
%   
%   This function will prompt the user for a year in which they would like
%   to have traslated to roman numerals.  It only accepts numbers between 1
%   and 3999, an error will be given if an input is entered that does not
%   meet those parameters.

msg1 = 'Please enter a number greater than 0.';
msg2 = 'Please enter a number less than 3999.';

x = input('Enter a year\n');
    if isempty(x)
        x = 2017;
    elseif x <= 0
    error(msg1)
    elseif x > 3999
    error(msg2)
end

d = [ 1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1];
c =  {'M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I'};
[];


for i = 1:numel(d)
    if x >= d(i)    
        ans = [ans,repmat(c{i},1,fix(x/d(i)))];
        x = rem(x,d(i));
    end
end