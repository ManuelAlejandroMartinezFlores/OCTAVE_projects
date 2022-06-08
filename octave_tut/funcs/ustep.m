function y = ustep(t, t0)
% USTEP(t, t0) unit step
    [m, n] = size(t);
    if m ~= 1 & n ~= 1
        error('T must be vector');
    end 
    y = zeros(m, n);
    for k = 1 : length(t)
        if t(k) >= t0   
            y(k) = 1;
        end 
    end 
endfunction