% Functions

function res = avg (v)
    res = 0;
    if nargin != 1
        usage("avg (vector)");
    endif
    if isvector(v)
        res = sum(v) / length(v);
    else 
        error('avg: expecting vector');
    endif
endfunction

try 
    avg(rand(1, 100))
    avg(rand(2, 2))
catch 
    disp(lasterr());
end

try 
    avg(rand(1, 100))
    avg(1, 2)
catch 
    disp(lasterr());
end

% Multiple outputs

function [maxx, idx] = vmax(v)
    idx = 1;
    maxx = v(idx);
    for k = 2:length(v)
        if v(k) > maxx 
            maxx = v(k);
            idx = k;
        endif
    endfor
endfunction

[maxx, idx] = vmax(rand(1, 20));
[maxx, idx]

% Variable args 

function val = smallest (varargin) 
    val = min([varargin{:}]);
endfunction

smallest(1, 2, 3, 4)
smallest(1, 2, 3, 4, 5, 6)

function print_args (varargin)
    for k = 1 : length (varargin)
        printf("Input argument %d: ", k);
        disp(varargin{k});
    endfor 
endfunction 

print_args(1, 2, 3, 4);

function varargout = one_to_n ()
    for k = 1 : nargout 
        varargout{k} = k;
    endfor
endfunction

[a, b, c] = one_to_n()
[a, b, c, d] = one_to_n()

% Default args

function hello (who = "World")
    printf("Hello, %s!\n", who);
endfunction

hello();

% Load multiple functions from single file

source("/Users/manuelmartinezflores/Documents/GitHub/OCTAVE_projects/octave_h/11_Functs_aux.m");

x = one() + two()

% Handles

f = @sin;
quad(f, 0, pi)


% Lambda abstraction

f = @(x) x.^2;
quad(f, 0, 3)

quad(@(x) sin(x), 0, pi)

a = 1;
b = 2;
quad(@(x) betainc(x, a, b), 0, 0.4)

f = inline("x^2 + 2"); % Obsolete
f(1)

