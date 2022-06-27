% Nonlinear Equations

function y = f(x)
    y(1) = -2 * x(1)^2 + 3 * x(1) * x(2) + 4 * sin(x(2)) - 6;
    y(2) = 3 * x(1)^2 - 2 * x(1) * x(2)^2 + 3 * cos(x(1)) + 4;
endfunction

[x, fval, info] = fsolve(@f, [1; 2])

function J = jacobian(x)
    J(1, 1) = 3 * x(2) - 4 * x(1);
    J(1, 2) = 4 * cos(x(2)) + 3 * x(1);
    J(2, 1) = -2 * x(2)^2 - 3 * sin(x(1)) + 6 * x(1);
    J(2, 2) = -4 * x(1) * x(2);
endfunction

[x, fval, info] = fsolve({@f, @jacobian}, [1; 2])


