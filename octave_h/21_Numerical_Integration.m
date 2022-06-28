% One variable

f = @(x) x .* sin(1 ./ x) .* sqrt(abs(1 - x));

[v, ier, nfun, err] = quad(f, 0.1, 3)


% Multiple variables

function In = g(y)
    In = ones(1, length(y));
    for k = 1:length(y)
        f = @(x) sin(pi .* x .* y(k)) .* sqrt(x .* y(k));
        In(k) = quadl(f, 0, 1);
    endfor 
endfunction

In = quadl("g", 0, 1)


f = @(x, y) sin(pi * x * y') .* sqrt(x * y');
n = 7;
[t, A, B, q] = colloc(n);

In = q' * f(t, t) * q