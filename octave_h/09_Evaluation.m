% Evaluation

% Try catch
eval('error("Bad example");', 'printf("This error ocurred:\n%s\n", lasterr());');

% Function by name

function res = newtroot(fname, x)
    % fname : string of function
    % x : initial guess
    delta = tol = sqrt(eps);
    maxit = 200;
    fx = feval(fname, x);
    for i = 1:maxit
        if abs(fx) < tol 
            res = x;
            return;
        else 
            fx_new = feval(fname, x + delta);
            deri = (fx_new - fx) / delta;
            x = x - fx / deri;
            fx = feval(fname, x);
        endif
    endfor 
    result = x;
endfunction 

rt = newtroot('sin', 3)

% Evalin 

function save (file, n1, n2)
    f = open_save_file(file);
    save_var(f, n1, evalin('caller', n1)); % Context (caller - base)
    save_var(f, n2, evalin('caller', n2));
endfunction

% Assignin

