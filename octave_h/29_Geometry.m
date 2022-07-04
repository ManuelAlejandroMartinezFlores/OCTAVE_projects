% Geometry 

x = rand(1, 10);
y = rand(size(x));
T = delaunay(x, y);
X = [x(T(:, 1)); x(T(:, 2)); x(T(:, 3)); x(T(:, 1))];
Y = [y(T(:, 1)); y(T(:, 2)); y(T(:, 3)); y(T(:, 1))];

figure(1);
hold on;
axis([0, 1, 0, 1]);
plot(X, Y, "b");
plot(x, y, "r*");
title("Delaunay");
hold off;
print("IMG/29_Geometry/01_delaunay.png");


x = randn(100, 1);
y = randn(100, 1);

vx = cos(pi * [-1 : 0.1 : 1]);
vy = sin(pi * [-1 : 0.1 : 1]);
in = inpolygon(x, y, vx, vy);
figure(2);
hold on;
plot(vx, vy);
plot(x(in), y(in), "r*");
plot(x(!in), y(!in), "bo");
title("InPolygon");
axis([-2, 2, -2, 2]);
hold off;
print("IMG/29_Geometry/02_inpolygon.png");


x = -3 : 0.05 : 3;
y = abs(sin(x));
k = convhull(x, y);
figure(3);
hold on;
plot(x(k), y(k), "r-");
plot(x, y, "b+");
title("ConvHull");
hold off;
print("IMG/29_Geometry/03_convhull.png");


x = 2 * rand(1000, 1) - 1;
y = 2 * rand(1000, 1) - 1;
z = sin(2 * (x.^2 + y.^2));
[xx, yy] = meshgrid(linspace(-1, 1, 32));
figure(4);
zz = griddata(x, y, z, xx, yy);
colormap jet;
mesh(xx, yy, zz);
title("GridData");
print("IMG/29_Geometry/04_griddata.png");

