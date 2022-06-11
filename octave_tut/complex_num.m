% Complex numbers

z = 4 - 3i;
z1 = 1 + 3i;

sub = z - z1 
add = z + z
div = z/z1
pow = z1 ^ 2

sn = sin(z)
ex = exp(pi*i)

img = imag(z)
re = real(z)
absv = abs(z)
conju = conj(z)
ang = angle(z)

hold on;
figure(1);
plot([z z1], '*');
axis([-5, 5 -5 5]);
title('Complex');
print('plots/complex.png');
hold off;


% Roots of polynomials
c = [1 2 -5 0 1 3];
rt = roots(c)
