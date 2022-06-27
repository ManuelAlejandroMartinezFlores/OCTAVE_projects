% Linar Algebra
A = [1, 2; 4, 2];
[dd, aa] = balance(A)
dd \ A * dd

[d, rcond] = det(A)

B = [3, 2; 1, 3];

dot_ = dot(A, B, 1)

[v, lambda] = eig(A)

g = givens(2, 1)
g * [2; 1]