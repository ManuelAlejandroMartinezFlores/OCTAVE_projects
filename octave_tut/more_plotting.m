% More graphs
hold on;
x = linspace(-10, 10);
h = figure(1);
subplot(2, 1, 1);
plot(x, sin(x));
title('y = sin(x)');
subplot(2, 1, 2);
plot(x, sin(x) ./ x);
title('y = sin(x)/x');
print('plots/mult_sins.png');
hold off;


% 3D

hold on;
t = 0 : pi/50 : 10*pi;
x = sin(t) .* t; y = cos(t) .* t; z = t;
hf = figure(2);
plot3(x, y, z);
title('Helix');
grid on;
print('plots/helix.png');
hold off;


% Surface

hold on;
x = 2 : 0.2 : 4;
y = 1 : 0.2 : 3;
[X, Y] = meshgrid(x, y);
Z = (X - 3) .^ 2 - (Y - 2) .^ 2;
hff = figure(3);
colormap(winter);
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
print('plots/surfaces.png');
hold off;

% Image

surf_img = imread('plots/surfaces.png');
surf_gray = rgb2gray(surf_img);
imwrite(surf_gray, 'plots/surf_gray.png');



