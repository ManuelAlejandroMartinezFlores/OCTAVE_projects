% Polynomials

p = [1, -2, 2];
N = length(p) - 1;
x = 1;
val = dot(x .^ (N:-1:0), p)


p = rand(10, 1) * 10;
x = 1;
y = polyval(p, x)

ym = polyvalm(p, rand(2, 2))

p = [2, 3, -4, -5, 2, 1];
roots_ = roots([2, 3, -4, -5, 2, 1])

figure(1);
hold on;
plot(-2:0.01:2, polyval(p, -2:0.01:2));
plot(roots_, polyval(p, roots_), "*r");
plot([-5, 5], [0, 0], "--k");
title("Roots");
axis([-2, 2, -2, 2]);
hold off;
print("IMG/27_Polynomials/01_roots.png");


conv_ = conv([1, 1], [1, -1])

num = [1, -3, 2, 1];
den = [2, -3];
f = @(x) polyval(num, x) ./ polyval(den, x);

deconv_ = deconv(num, den)
x = -2:0.05:7;
figure(2);
hold on;
plot(x , f(x));
plot(x, polyval(deconv_, x), "r");
plot([-3, 5], [0, 0], "--k");
plot([0, 0], [-6, 6], "--k");
axis([-2, 4, -5, 5]);
title("Deconv for asintote");
print("IMG/27_Polynomials/02_polydiv.png");

a = rand(30, 30);
b = [1, 2, 1;
    2, 4, 2;
    1, 2, 1] ./ 16;
a_new = conv2(a, b, "same");
a_new = conv2(a_new, b, "same");
a_blurred = conv2(a, b, "same");

b = [0, -1, 0;
    -1, 5, -1;
    0, -1, 0];
a_center = conv2(a, b, "same");

a_avg = conv2(a, ones(3, 3) ./ 9, "same");

figure(3, 'Position', [0 0 1000 1000]);
colormap winter;
subplot(2, 2, 1);
pcolor(a);
title("Original");
subplot(2, 2, 2);
pcolor(a_blurred);
title("Gaussian");
subplot(2, 2, 3);
pcolor(a_center);
title("Sharpen");
subplot(2, 2, 4);
pcolor(a_avg);
title("Average");
print("IMG/27_Polynomials/03_conv2.png");

pkg load image;

a = imread("IMG/27_Polynomials/img.jpg");
a = imresize(a, [70, 105]);
a = rgb2gray(a);
size(a)
b = [1, 2, 1;
    2, 4, 2;
    1, 2, 1] ./ 16;
a_new = conv2(a, b, "same");
a_new = conv2(a_new, b, "same");
a_blurred = conv2(a, b, "same");
a_blurred = uint8(a_blurred / max(a_blurred(:)) * 255);

b = [0, -1, 0;
    -1, 5, -1;
    0, -1, 0];
a_center = conv2(a, b, "same");
a_center = uint8(a_center / max(a_center(:)) * 255);

b = [-1, -2, -1;
    0, 0, 0;
    1, 2, 1];
a_edge = conv2(a, b, "same");
b = [-1, 0, 1;
    -2, 0, 2;
    -1, 0, 1];
a_edge += conv2(a, b, "same");
a_edge = uint8(a_edge / max(a_edge(:)) * 255);

figure(4, 'Position', [0 0 800 600]);
subplot(2, 2, 1);
imshow(a);
title("Original");
subplot(2, 2, 2);
imshow(a_blurred);
title("Gaussian");
subplot(2, 2, 3);
imshow(a_center);
title("Sharpen");
subplot(2, 2, 4);
imshow(a_edge);
title("Edge");
print("IMG/27_Polynomials/04_conv2_img.png");


pgcd = polygcd([1 0 -1], [1 1])


p = [1, 0, 1];
integral = polyint(p)
deriv = polyder(p)

x = rand(50, 1) * 8 - 4;
y = (x + 3) .* (x + 1) .* x .* (x - 2) .* (x - 4) + randn(50, 1) * 4;
y = y / 10;

figure(5);
hold on;
plot(x, y, "*");
for n = 1:4
    p = polyfit(x, y, n);
    xi = -5 : 0.1 : 5;
    yi = polyval(p, xi);
    plot(xi, yi, "--");
endfor
p = polyfit(x, y, 5);
xi = -5 : 0.1 : 5;
yi = polyval(p, xi);
plot(xi, yi, "r");
legend("Data", "1", "2", "3", "4", "5");
axis([-5, 5, -10, 10]);
title("Ployfit");
hold off;
print("IMG/27_Polynomials/05_polyfit.png");


x = [-2, -1, 1, 2];
p = [0, 1, 0;
    1, -2, 1;
    0, -1, 1];
pp = mkpp(x, p);
xi = linspace(-2, 2, 50);
yi = ppval(pp, xi);
figure(6);
plot(xi, yi);
title("Mkpp");
print("IMG/27_Polynomials/06_mkpp.png");


charac_poly = poly(rand(5, 5))

poly_out = polyout([-2, 1, 3, 0, 1], "x")

polyred = polyreduce([0, 0, 2, 1])