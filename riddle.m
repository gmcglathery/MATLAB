function [y] = riddle();
%%   Greg McGlathery
%   ENG 101-02
%   HW3 Riddle
%   Due Date: 10-10-17
%
%   This function will run a loop until the four variables declared return
%   a positive number.  A pie chart is also generated showing the
%   distribution of colors.
%

%   Declaring variables
r = 0;
y = 0;
b = 0;
g = 0;

while(r < 1 || y < 1 || b < 1 || g < 1)
    y = ((r*7)-3)/11;
    b = (((r*2)+y)-3)/13;
    g = (r+y+b)/5;
    r = r + 1;
end

L = {'Red','Yellow','Blue','Green'};
X = [r,y,b,g];                          %Can't figure out how to change the color of the pie slices
H = pie(X);
T = H(strcmpi(get(H,'Type'),'text'));
P = cell2mat(get(T,'Position'));
set(T,{'Position'},num2cell(P*0.6,2))
text(P(:,1),P(:,2),L(:))
y = round(X,0);

 
end
    




