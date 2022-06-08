
% Horizontal
a = [1, 2, 3];
a

% Vertical
b = [1; 2 ; 3];
b

% Matriz
c = [1, 2; 3, 4];
c


% Añadir 
d = [a 5 6];
d

% Counting nm
c =2:6

% Step 
s = 2:0.3:4

% Zeros
z = zeros(2, 3)

% Ones
o = ones(3, 2)

% Linspace    Trata de incluir el ultimo
ln = linspace(1, 3, 4)

%logspace
lg = logspace(3, 5, 3)

% 1 Index
a = [1:2:6 -1 0];
a(3)
a(1:2:5)


% Scalar operation
sc = 2 * a 

% Element wise
a = 1:3;
b = 3:5;
mul = a .* b
pow = a .^ b

% Func
s = sin(a)