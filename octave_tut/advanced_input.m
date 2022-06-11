% Advanced Input

score = 95.4;
fprintf('Your score is %f \n', score)

fprintf('Your score is %7.2f \n', score)

fprintf('Your score is %12.2e \n', score)


% Array

score = 60 : 10 : 90;

fprintf('Your score is %i and %i \n', score)

M = [2 -1; 2 0; 3 0];
fprintf('%2i %2i \n', M) % Column order 
fprintf('%2i %2i \n', M')


% Files

f1 = fopen('myfile.txt', 'w');
fprintf(f1, '%i %i \n', M);
fclose(f1);

f2 = fopen('myfile.txt');
A = fscanf(f2, '%i %i \n', [3 2]);
fclose(f2);
A
