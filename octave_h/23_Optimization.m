% Optimization

% Linear Programming

c = [10; 6; 4];
a = [1, 1, 1;
    10, 4, 5;
    2, 2, 6];
b = [100; 600; 300];
lb = [0; 0; 0];
ub = [];
ctype = "UUU";
vartype = "CCC";
s = -1;

param.msglev = 1;
param.itlim = 100;

[xmin, fmin, status, extra] = glpk(c, a, b, lb, ub, ctype, vartype, s, param)


% Nonlinear

function r = g(x) % Constraints
    r = [sumsq(x) - 10;
        x(2) * x(3) - 5 * x(4) * x(5);
        x(1)^3 + x(2)^3 + 1];
endfunction

function obj = phi(x) % Objective
    obj = exp(prod(x)) - 0.5 * (x(1)^3 + x(2)^3 + 1)^2;
endfunction

x0 = [-1.8; 1.7; 1.9; -0.8; -0.8];

[x, obj, info, iter, nf, lambda] = sqp(x0, @phi, @g, [])

% Linear Least Squares

x = rand(50, 4);
y = 10 * x(:, 1) - 2 * x(:, 2) + 5 * x(:, 3) - 8 * x(:, 4) + randn(50, 1) * 0.3;

[beta, sigma, r] = ols(y, x);
beta

