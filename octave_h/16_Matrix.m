% Matrix manipulation

any_ = any(eye(2, 4))
any_ = any(eye(2, 4), 2)


all_ = all(rand(5) < 0.9)

xor_ = xor(all(all(rand(5) < 0.99)), all(all(rand(5) < 0.1)))

dif_ = diff([1:8; 9:16], 1, 2)


isinf_ = isinf([12, Inf, NA, NaN])
isnan_ = isnan([12, Inf, NA, NaN])


fnd = find(eye(2))
[rw, cl] = find(eye(2))
[rw, cl, val] = find(eye(2))

[errorcode, a, b] = common_size([1, 2; 3, 4], 5)

flipdm = flip([1, 2; 3, 4], 2)
rot = rot90([1, 2; 3, 4], -1)
A = zeros(2, 2, 2);
A(:, :, 1) = [1, 2; 3, 4];
A(:, :, 2) = [5, 6; 7, 8];
A;
rtdim = rotdim(A, -1, [1, 2])
rtdim = rotdim(A, -1, [1, 3])

cat_ = cat(2, ones(2,2), zeros(2, 2))
cat_ = cat(3, ones(2,2), zeros(2, 2))

perm = permute(A, [3, 1, 2])
rs = reshape(A, [2, 4])

B = [1:3; 4:6; 7:9];
circs = circshift(B, [-1, 1])

shiftd = size(shiftdim(ones(1, 2, 3), -1))
shiftd = size(shiftdim(ones(1, 2, 3), 1))

A = [1, 2;, 2, 3; 3, 1];
[s, id] = sort(A(:, 2))
A(id, :)


tri = tril(ones(3), -1)
tri = tril(ones(3), 1)

f = @(x) max(2, x);
a = arrayfun(f, A)

B = A + 1;
g = @(x, y) max(x, y);
b = bsxfun(g, A, B)


poisson = randp(2, 4, 4)
gamma_ = randg(3, 3, 2)

perm = randperm(5)

mgc = magic(3)

pascal_ = pascal(3, 0)

z = pascal(3, 1) ^ 2
z = pascal(3, 2) ^ 3


