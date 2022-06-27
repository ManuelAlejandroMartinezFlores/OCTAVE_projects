% Plotting

x = -10 : 0.1 : 10; 
figure(1);
hold on;
plot(x, sin(x));
hold off;
print("IMG/15_Plotting/01_plot.png");

figure(2);
hold on;
fplot(@sin, [-10, 10], 201);
hold off;
print("IMG/15_Plotting/02_fplot.png");


y1 = 0.1 .* x.^2 - 1;
figure(3);
hold on;
plot(x, y1, "*", "markersize", 5);
hold off;
print("IMG/15_Plotting/03_mod.png");


y = 10 .^ x;
figure(4);
hold on;
semilogy(x, y);
semilogy(x, x);
title("Log scale");
hold off;
print("IMG/15_Plotting/04_log.png");


figure(5);
hold on;
hist(randn(1000, 1), 30, 1);
title("Hist");
hold off;
print("IMG/15_Plotting/05_hist.png");

figure(6);
hold on;
bar(rand(10, 1));
title("Bar");
hold off;
print("IMG/15_Plotting/06_bar.png");

figure(7);
hold on;
barh(rand(10, 3), 0.9, "stacked");
title("BarH");
hold off;
print("IMG/15_Plotting/07_barh.png");


figure(8);
hold on;
stairs(x, cos(x));
x = -10 : 0.5 : 10;
stairs(x, cos(x));
title("Stairs");
hold off;
print("IMG/15_Plotting/08_stairs.png");

x = 1 : 10;
y = x * 2;
figure(9);
hold on;
stem(x, y, "fill");
title("Stem");
hold off;
print("IMG/15_Plotting/09_stem.png");


x = 2 : 0.2 : 4;
y = 1 : 0.2 : 3;
[X, Y] = meshgrid(x, y);
Z = (X - 3) .^ 2 - (Y - 2) .^ 2; 
figure(10);
hold on;
contour(X, Y, Z);
title("Contour");
hold off;
print("IMG/15_Plotting/10_contour.png");


x = 0 : 0.25 : 5;
y = sin(x);
yp = 0.1 .* randn(size(x));
ym = - 0.1 .* randn(size(x));
figure(11);
hold on;
errorbar(x, y, ym, yp, "#~");
title("Errorbar");
hold off;
print("IMG/15_Plotting/11_errorbar.png");


t = 0 : 0.1 : 6*pi;
figure(12);
hold on;
polar(t, t);
polar(t, 6 - 6 .* cos(t))
title("Polar");
hold off;
print("IMG/15_Plotting/12_polar.png");


figure(13);
hold on;
p = rand(4, 1);
p = p ./ sum(p);
pie(p, {"a", "b", "c", "d"});
title("Pie");
hold off;
print("IMG/15_Plotting/13_pie.png");


figure(14);
hold on;
[x, y] = meshgrid(1:2:20);
quiver(x, y, sin(2 * pi * x/10), cos(2 * pi * y/10));
title("Quiver");
hold off;
print("IMG/15_Plotting/14_quiver.png");


figure(15);
hold on;
[x, y] = meshgrid(1:2:20);
pcolor(x, y, rand(10, 10));
title("Pcolor");
hold off;
print("IMG/15_Plotting/15_pcolor.png");

x = 0 : 0.1 : 7;
y = sin(x);
figure(16);
hold on;
area(x, y);
title("Area");
hold off;
print("IMG/15_Plotting/16_area.png");

[X, Y] = meshgrid(-8 : 0.2 : 8);
r = sqrt(X.^2 + Y.^2) + eps;
Z = sin(r) ./ r ;
figure(17);
colormap(jet);
meshc(X, Y, Z);
hold on;
title("MeshC");
hold off;
print("IMG/15_Plotting/17_meshc.png");


figure(18);
t = 0 : 0.1 : 10*pi;
plot3(t .* cos(t), t .* sin(t), t);
hold on;
title("Plot3");
view(5, 45); % azimuth, altitude
grid on;
hold off;
print("IMG/15_Plotting/18_plot3.png");

hold on;
[X, Y] = meshgrid(-8 : 0.4 : 8);
r = sqrt(X.^2 + Y.^2) + eps;
Z = sin(r) ./ r ;
hff = figure(19);
colormap(jet);
subplot(2, 2, 1);
surf(X, Y, Z);
title('surf');
subplot(2, 2, 2);
mesh(X, Y, Z);
title('mesh');
subplot(2, 2, 3);
meshz(X, Y, Z);
title('meshz');
subplot(2, 2, 4);
contour(X, Y, Z);
title('contour');
print('IMG/15_Plotting/19_surfaces.png');
hold off;


%Annotations 

x = -10 : 0.1 : 10;
y = sin(x);
figure(20);
plot(x, sin(x));
title("sin(x)");
xlabel("x");
ylabel("sin(x)");
text(pi, 0.7, "annotation");
legend("sin(x)");
print("IMG/15_Plotting/20_annot.png");


% Common

figure(21, 'Position', [0 0 1000 400]);
colormap(winter);
subplot(1, 2, 1);
[x, y, z] = sombrero();
mesh(x, y, z);
title("Sombrero");
subplot(1, 2, 2);
[x, y, z] = peaks();
mesh(x, y, z);
title("Peaks");
print("IMG/15_Plotting/21_test.png");