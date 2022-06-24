% Statements

% Switch

foo = 2;

switch (foo)
    case (1)
        x = 1;
    case {2, 3}
        disp("- \n");
end

% While

function res = fib_meo (n)
    if n < 3
        res = 1;
        return;
    endif 
    f = ones(1, n);
    k = 3;
    while k <= n
        f(k) = f(k - 1) + f(k - 2);
        k++;
    endwhile
    res = f(n);
endfunction

fib_meo(32)


% Do until

function res = fib_meo (n)
    if n < 3
        res = 1;
        return;
    endif 
    f = ones(1, n);
    k = 2;
    do
        k++;
        f(k) = f(k - 1) + f(k - 2);
    until (k == n)
    res = f(n);
endfunction 

fib_meo(32)


% For

function res = fib_meo (n)
    if n < 3
        res = 1;
        return;
    endif 
    f = ones(1, n);
    for k = 3:n 
        f(k) = f(k - 1) + f(k - 2);
    endfor
    res = f(n);
endfunction 

fib_meo(32)

disp('Matrix');
for k = [1, 2; 3, 4]
    k
endfor

disp('Cell');
for k = {1 , 'two'; 'three', 4}
    k
endfor

disp('Structure');
x.a = 1;
x.b = [1, 2; 3, 4];
x.c = 'str';
for [val, key] = x
    key 
    val 
endfor


% Break

function small_fact (num)
    div = 2; 
    while div * div <= num 
        if rem(num, div) == 0
            break;
        endif 
        div++;
    endwhile
    if rem(num, div) == 0
        printf("Smallest divisor of %d is %d\n", num, div);
    else 
        printf("%d is prime\n", num);
    endif
endfunction

small_fact(103);
small_fact(49);
small_fact(12);

% Continue

vec = round(rand(1, 10) * 100);
for x = vec 
    if rem (x, 2) != 0
        continue; 
    endif 
    printf("%d\n", x);
endfor 

% Line continuation 

long_variable_name = 1;
x = long_variable_name ...
    + long_variable_name \ 
    - 42
x = (long_variable_name
    + long_variable_name
    - 42)