% Differential Equations



function xdot = f(x, t)
    xdot = 0.2 * x;
endfunction

x0 = 1000;

t = linspace(0, 20, 1000);
y = lsode("f", x0, t);

figure(1);
plot(t, y);
title("Exp Growth");
print("IMG/22_Differential_Equations/01_exp.png");

function xdot = f(x, t)
    xdot = 0.1 * x * (7 - x);
endfunction

x0 = 0.1;

t = linspace(0, 10, 100);
y = lsode("f", x0, t);

figure(2);
plot(t, y);
title("Log Growth");
print("IMG/22_Differential_Equations/02_log.png");


function xdot = f(x, t)
    r = 0.25;
    k = 1.4;
    a = 1.5;
    b = 0.16;    
    c = 0.9;
    d = 0.8;
    xdot(1) = r*x(1)*(1 - x(1)/k) - a*x(1)*x(2)/(1 + b*x(1));
    xdot(2) = c*a*x(1)*x(2)/(1 + b*x(1)) - d*x(2);
endfunction

t = linspace(0, 50, 200);
x0 = [1; 2];
y = lsode("f", x0, t);

figure(3);
plot(t, y);
title("Multiple");
print("IMG/22_Differential_Equations/03_multiple.png");

function xdot = f(x, t)
    xdot = - x * cos(t);
endfunction

x0 = 0.5;

t = linspace(0, 10, 100);
y = lsode("f", x0, t);

figure(4);
plot(t, y);
title("HL DE");
print("IMG/22_Differential_Equations/04_hl_ode.png");


