% Matrices and Vectors

A = [5 7 9
    1 3 2];

B = [2 0; 0 -1; 1 0];

D = [1 2 3];
for x = 2:4
    D = [D; x, x+1, x+2];
end
D;

C = A * B;

x = 1:3;

A * x';

I = eye(4);

D = diag([1 -2 7]);

diag(A);

comp = [eye(3), B;
        A, zeros(2,2)];


t = 0 : 0.2 : 1;
freq = [sin(t)', sin(2*t)', sin(3*t)'];

freq(3, 2);
freq(2, :);
freq(2, 1:2) = [99 99];


size(freq);

R = rand(3, 3);

R * inv(R);

deter = det(R);
trac = trace(R);
eigen = eig(R);

R = rand(3, 4);
rnk = rank(R);
nl = null(R);
lud = lu(R);
qrd = qr(R);
sv = svd(R);
pin = pinv(R);

R * pin;

gaussian_elim = rref(R);

A = [1 1
    3 5];
b = [3 5]';
A\b;  % \ -> left inv; / -> right inv


cA = cond(A);

M = [1 1; 1 1.01];
cM = cond(M);

% \ also for Least Squares Method


A = [2 -1; 1 1; 6 -1];
b = [2 5 -5]';
x = inv(A' * A) * A' * b;
h = figure(1);
hold on;
xx = linspace(-4, 4, 3);
plot(xx, 2*xx-2);
plot(xx, 5 -xx);
plot(xx, 6*xx+5);
plot(x(1), x(2), '*');
legend('2x - y =2', 'x + y = 5', '6x - y = -5' , 'Pred');
axis([-4 4 -20 20]);
saveas(h, 'plots/triangulation.png');
hold off;









