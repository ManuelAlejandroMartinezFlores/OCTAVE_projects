% Eigenvectors and Singular Value Decomposition

A = [1 3 -2
    3 5 1
    -2 1 4];
ei = eig(A)

[V, D] = eig(A)

V * D * inv(V)

A = [1 3 -2 3
    3 5 1 5
    -2 1 4 2];

svd_ = svd(A)

[U, S, V] = svd (A)


A = [1 3 
    3 5 
    -2 1];

[U, S, V] = svd(A, 0)  % SVD Economy

