% Errors and Warnings

function f (a)
    if nargin == 0
        error('not enough');
    endif
endfunction

try 
    f()
catch 
    printf("%s\n", lasterr());
end

n_errors = 0;
for n = 1:100
    try 
        if rem(n, 10) == 0
            error('10');
        endif 
    catch 
        msg = lasterror.message;
        if strfind(msg, '10')
            n_errors++;
        endif 
    end_try_catch 
endfor 
n_errors

a = -1;
if a < 0
    warning('"a" must be nonneg, setting to 0');
    a = 0;
endif 