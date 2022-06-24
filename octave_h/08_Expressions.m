% Expression 

function f (x, n)
    while n-- > 0
        disp(x);
    endwhile
endfunction

f(3, 2)

% Recursion

function ans = fact (n)
    if n > 0
        ans = n * fact(n - 1);
    else 
        ans = 1;
    endif
endfunction

n = fact(3)

function ans = fib (n)
    if n > 2
        ans = fib(n - 1) + fib(n -2);
    else 
        ans = 1;
    endif
endfunction

n = fib(5)


% Boolean

b = [1, 0; 0, 1] & [1, 0; 2, 3]

a = [2, 2];
b = [1, 1];

while a-- > 0 & b++ % Element wise
    disp('non Short-circuit'); 
endwhile 

a = [2, 2];
b = [1, 1];

while a-- > 0 && b++ % All
    disp('Short-circuit');
endwhile 

% Assignment

x = y = z = 0;
[x y z]

[a, b] = [u, s, v] = svd(eye(2));
[a, b]

% Increment

x = 1;
[x-- == 1, x]
x = 1;
[--x == 1, x]