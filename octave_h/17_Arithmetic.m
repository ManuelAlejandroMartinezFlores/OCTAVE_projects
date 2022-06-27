% Arithmetic

ceil_ = ceil(5.4)

cplx_pair = cplxpair(exp(2i*pi*[0:4]'/5))

[p, n] = factor(3423424)

fact = factorial(5)

rem_ = rem(12, 5)

[g, x, y] = gcd(15, 7)

[x, y] = gradient([1:4; 3:6])

max_ = max(2:5, pi)

mod_ = mod(1:4, 2)

ntpow2 = nextpow2(14)

nroot = nthroot(-1, 3) % Real

(-1) ^ (1/3)

primes_ = primes(25)

sign_ = sign(-2:1:2)

choose = bincoeff(5, 2)


% Coordinate Transform

[theta, r] = cart2pol(3, 2)
[x, y] = pol2cart(theta, r)
[theta, phi, r] = cart2sph(1, 2, 4)
[x, y, z] = sph2cart(theta, phi, r)

% const

I = I(3)
inf_ = Inf(3)
NaN_ = NaN(2)