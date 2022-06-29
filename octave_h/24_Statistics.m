% Statistics
pkg load statistics

a = [0.9, 0.7;
    0.1, 0.2;
    0.5, 0.4;
    0.4, 0.5;
    0.7, 0.4;
    0.3, 0.7;
    0.3, 0.4];

b = a + rand(size(a)) - 0.5;

mean_ = mean(a, 1) % opt a, g, h

median_ = median(a, 1)

meansq_ = meansq(a, 1)

std_ = std(a, 0, 1) % opt 0:sample 1:population

var_ = var(a, 0, 1)

[mode_, freq_, c] = mode(a, 1)

cov_ = cov(a, b)

cor_ = corrcoef(a)
cor_ = corrcoef(a, b)

kurtosis_ = kurtosis(a, 1)

skewness_ = skewness(a, 1)

stats = statistics(a)

perms = perms(1:3)

vals = unique([1:3, 1:2])

range_ = range(a, 1)

probit_ = probit(a)

logit_ = logit(a)

iqr_ = iqr(a, 1)

% Plots

X = randn(100, 3);

figure(1);
hold on;
qqplot(X(:, 1));
title("QQNormal");
plot([-3, 3], [-3, 3], "--k");
hold off;
print("IMG/24_Statistics/01_qqnorm.png");


figure(2);
hold on;
ppplot(X(:, 1));
title("PPNormal");
plot([-3, 3], [-3, 3], "--k");
hold off;
print("IMG/24_Statistics/02_ppnorm.png");


% Tests 
a(:, 2) += 0.27;
printf("\nANOVA\n");
[pval, f, df_b, df_w] = anova(a)

printf("\nchi hom\n");
[pval, chisq, df] = chisquare_test_homogeneity(randn(10, 1), randn(10, 1), 0:0.2:1)

printf("\nchi ind\n");
[pval, chisq, df] = chisquare_test_independence([1, 3, 10; 1, 8, 15])

printf("\nkruskal wallis\n");
[pval, k, df] = kruskal_wallis_test(rand(5, 1), rand(5, 1) + 0.7, rand(5, 1) + 1.5)

printf("\nsign\n");
[pval, b, n] = sign_test(rand(15, 1), rand(15, 1) + 0.7, ">")

printf("\nt test\n");
[pval, t, df] = t_test(rand(20, 1), 0.1, ">")

printf("\nt test 2\n");
[pval, t, df] = t_test_2(randn(15, 1), randn(15, 1) + 0.7, "<")

printf("\nvar\n");
[pval, f, df_n, df_d] = var_test(randn(15, 1), randn(15, 1), "<>")

printf("\nWilcoxon\n");
[pval, a] = wilcoxon_test(rand(27, 1), rand(27, 1) + 0.7, "<")

printf("\nz test\n");
[pval, z] = z_test(randn(15, 1), 1, 1, "<")

printf("\nz test 2\n");
[pval, z] = z_test_2(randn(15, 1), randn(15, 1) + 1, 1, 1, "<")

printf("\n \n");
% Models

x = rand(50, 3);
x(:, 3) = ones(50, 1);
y = 10 * x(:, 1) - 2 * x(:, 2) + 15 + randn(50, 1) * 0.6;

[beta, sigma, r] = ols(y, x);
beta

[X, Y] = meshgrid(0:0.1:1);
Z = X .* beta(1) + Y .* beta(2) + beta(3);

figure(3);
scatter3(x(:, 1), x(:, 2), y, 50, "r", "filled"); % size, color
hold on;
s = surface(X, Y, Z);
set(s, 'facealpha', 0.7);
title("Linear Regression");
hold off;
print("IMG/24_Statistics/03_linear.png");

x = rand(50, 2);
y = round(0.7 * x(:, 1) + 0.3 * x(:, 2));

[theta, bet] = logistic_regression(y, x)
all(((theta - x * bet) < 0) == y)

figure(4);
hold on;
plot(x(y==0, 1), x(y==0, 2), "b*");
plot(x(y==1, 1), x(y==1, 2), "ro");
plot([(theta - bet(2)) / bet(1), theta / bet(1)], [1, 0], "--k");
title("Logistic Regression");
hold off;
print("IMG/24_Statistics/04_Logistic.png");

x = rand(50, 3);
y = round(0.1 * x(:, 1) + 0.2 * x(:, 2) + x(:, 3) * 0.7);

[theta, bet] = logistic_regression(y, x)
all(((theta - x * bet) < 0) == y)
[X, Y] = meshgrid(0:0.1:1);
Z = (theta - bet(1) * X - bet(2) * Y) / bet(3);

figure(5);
plot3(x(y==0, 1), x(y==0, 2), x(y==0, 3), "b*");
hold on;
plot3(x(y==1, 1), x(y==1, 2), x(y==1, 3), "ro");
s = surface(X, Y, Z);
set(s, 'facealpha', 0.5);
grid on;
title("Logistic Regression");
hold off;
print("IMG/24_Statistics/05_logistic_m.png");