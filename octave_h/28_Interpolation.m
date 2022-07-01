% Interpolation

xf = 0 : 0.05 : 10;
yf = sin(2 * pi * xf / 5);
xp = 0 : 10;
yp = sin(2 * pi * xp / 5);

lin = interp1(xp, yp, xf);
spl = interp1(xp, yp, xf, 'spline');
cub = interp1(xp, yp, xf, 'cubic');
near = interp1(xp, yp, xf, 'nearest');

figure(1);
hold on;
plot(xf, yf, "--r");
plot(xf, lin);
plot(xf, spl);
plot(xf, cub);
plot(xf, near);
plot(xp, yp, "r*");
legend("original", "linear", "spline", "cubic", "nearest");
title("Interp1");
hold off;
print("IMG/28_Interpolation/01_interp1.png");


t = -2:2;
y = sign(t);
x = -2:0.02:2;
ys = interp1(t, y, x, 'spline');
yp = interp1(t, y, x, 'pchip');
figure(2);
hold on;
plot(x, ys, "b");
plot(x, yp, "g");
plot(t, y, "r*");
legend("spline", "pchip");
title("Smoothness");
hold off;
print("IMG/28_Interpolation/02_smoothness.png");


t = 0 : 0.3 : pi;
dt = t(2) - t(1);
ti = t(1) + [0 : 99] * dt * length(t) / 100;
y = sin(4 * t + 0.3) .* cos(3 * t - 0.1);
yi = sin(4 * ti + 0.3) .* cos(3 * ti - 0.1);

figure(3);
hold on;
plot(ti, yi, "--r");
plot(ti, interp1(t, y, ti, "spline"));
plot(ti, interpft(y, 100));
plot(t, y, "r*");
legend("real", "spline", "fourier");
title("Fourier vs Spline");
hold off;
print("IMG/28_Interpolation/03_fourier.png");


[X, Y] = meshgrid(-2:1);
Z = (X - 1) .* (Y + 0.5) .* (X - 0.5) .* (Y + 1);
[x, y] = meshgrid(-2:0.1:1);
z = interp2(X, Y, Z, x, y, 'linear');

figure(4);
colormap jet;
subplot(2, 2, 1);
plot3(X, Y, Z, "r*");
hold on;
z = (x - 1) .* (y + 0.5) .* (x - 0.5) .* (y + 1);
surface(x, y, z);
grid on;
title("Original");
hold off;

subplot(2, 2, 2);
plot3(X, Y, Z, "r*");
hold on;
z = interp2(X, Y, Z, x, y, 'linear');
surface(x, y, z);
grid on;
title("Linear");
hold off;

subplot(2, 2, 3);
plot3(X, Y, Z, "r*");
hold on;
z = interp2(X, Y, Z, x, y, 'spline');
surface(x, y, z);
grid on;
title("Spline");
hold off;

subplot(2, 2, 4);
plot3(X, Y, Z, "r*");
hold on;
z = interp2(X, Y, Z, x, y, 'nearest');
surface(x, y, z);
grid on;
title("Nearest");
hold off;
print("IMG/28_Interpolation/04_interp2.png");


