%Variables

% Global

global x = 0;
function f ()
    x = 1;
endfunction

f();
x


% Persistent 

function count_calls ()
    persistent calls = 0;
    printf("count_calls has been called %d times\n", ++calls);
endfunction

for i = 1 : 3
    count_calls();
endfor 

function count_calls ()
    persistent calls;
    if isempty(calls)
        calls = 0;
    endif 
    printf("count_calls has been called %d times\n", ++calls);
endfunction


for i = 1 : 3
    count_calls();
endfor 

for i = 1 : 3
    count_calls();
endfor 



