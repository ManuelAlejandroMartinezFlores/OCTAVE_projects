% Sparse Matrices

speye_ = speye(4)

sprand_ = sprand(3, 3, 0.2)

sprandn_ = sprandn(3, 3, 0.3)

sparse_ = sparse(1:3, 1:3, 1:3) 

spfun_ = spfun(@sin, sprand_)

spmax_ = max(sparse_, sprand_)

atan2_ = atan2(sparse_, sprand_)

[x, y] = find(speye_);
[x, y]

scalar = nnz(speye_)


A = sparse([2,6,1,3,2,4,3,5,4,6,1,5], [1,1,2,2,3,3,4,4,5,5,6,6], 1,6,6);
xy =  [0,4,8,6,4,2;5,0,5,7,5,7]';
figure(1); 
gplot(A, xy);
title("Gplot");
xlabel("For graphs");
print("IMG/20_Sparse_Matrices/01_gplot.png");

A = sprandn(100, 100, 0.3);

figure(2);
spy(A);
title("Spy");
print("IMG/20_Sparse_Matrices/02_spy.png");


A = sparse(ceil(rand(30, 1)*6), ceil(rand(30, 1)*6), 1, 6, 6);
figure(3);
etreeplot(A);
title("Etree");
print("IMG/20_Sparse_Matrices/03_etree.png");



N = 10;
A = sparse(diag([1:N]));
b = rand(N, 1);

x = pcr(A, b)

applyA = @(x) [1:10]' .* x;
x = pcr(applyA, b)

function y = applyM(x)
    K = floor(length(x) - 2);
    y = x;
    y(1:K) = x(1:K) ./ [1:K]'
endfunction


[x, flag, relres, iter, resvec] = pcr(A, b, [], [], 'applyM')
figure(4);
semilogy([1:iter+1], resvec);
title("PCR");
print("IMG/20_Sparse_Matrices/04_pcr.png");


% Application

node_y= [1;1.2;1.5;1.8;2]*ones(1,11);
node_x= ones(5,1)*[1,1.05,1.1,1.2, ...
    1.3,1.5,1.7,1.8,1.9,1.95,2];
nodes= [node_x(:), node_y(:)];
[h,w]= size(node_x);
elems= [];
for idx= 1:w-1
    widx= (idx-1)*h;
    elems= [elems; ...
        widx+[(1:h-1);(2:h);h+(1:h-1)]'; ...
        widx+[(2:h);h+(2:h);h+(1:h-1)]' ];
endfor
E= size(elems,1); # No. of simplices
N= size(nodes,1); # No. of vertices
D= size(elems,2); # dimensions+1

# Element conductivity
conductivity= [1*ones(1,16), ...
    2*ones(1,48), 1*ones(1,16)];
# Connectivity matrix
C = sparse ((1:D*E), reshape (elems', ...
    D*E, 1), 1, D*E, N);

figure(5);
spy(C);
title("Connectivity");
print("IMG/20_Sparse_Matrices/05_connect.png"); 

Siidx = floor([0:D*E-1]'/D) * D * ones(1, D) + ones(D*E, 1)*(1:D);
Sjidx = [1:D*E]' * ones(1, D);
Sdata = zeros(D*E, D);
dfact = factorial(D - 1);

for j = 1 : E 
    a = inv([ones(D, 1), nodes(elems(j, :), :)]);
    const = conductivity(j) * 2 / dfact / abs(det(a));
    Sdata(D*(j-1)+(1:D), :) = const * a(2:D, :)' * a(2:D, :);
endfor 

SE = sparse(Siidx, Sjidx, Sdata);
S = C' * SE * C;

D_nodes = [1:5, 51:55];
D_value = [10 * ones(1, 5), 20 * ones(1, 5)];
V = zeros(N, 1);
V(D_nodes) = D_value;
idx = 1:N;
idx(D_nodes) = [];


N_nodes = [];
N_value = [];
Q = zeros(N, 1);
Q(N_nodes) = N_value;

V(idx) = S(idx, idx) \ (Q(idx) - S(idx, D_nodes) * V(D_nodes));

elemx = elems(:, [1, 2, 3, 1])';
xelems = reshape(nodes(elemx, 1), 4, E);
yelems = reshape(nodes(elemx, 2), 4, E);
velems = reshape(V(elemx), 4, E);
figure(6);
plot3(xelems, yelems, velems, 'b');
grid on;
% box on;
title("Voltage solution per vertex");
print("IMG/20_Sparse_Matrices/06_app.png");



