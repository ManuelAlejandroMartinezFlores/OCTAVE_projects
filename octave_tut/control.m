% Control Statements Tutorial

a = 2;
b = 3;
if a > b
    c = 3;
else
    c = 4;
end;


% Switch

a = 1;
switch a
    case 0
        disp('a is zero');
    case 1
        disp('a is one');
    otherwise
        disp('-');
end

% For loops
for n = 1:5
    nf(n) = factorial(n);
end
disp(nf)


% While loops
x = 1;
while 1 + x > 1
    x = x / 2;
end
disp(x)
