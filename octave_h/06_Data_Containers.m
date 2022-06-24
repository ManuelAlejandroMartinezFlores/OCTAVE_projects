% Structures

x.a = 1;
x.b = [1, 2; 3, 4];
x.c = 'abc';

x

b.d = 3;
x.b = b;

x

a.b.c.d.f.g = 1

[s.u, s.s, s.v] = svd([1, 2; 3, 4]);
s 


% Structure Arrays

m(1).a = 's1';
m(2).a = 's2';
m(1).b = 1;
m(2).b = 2;
m(2)


in = struct ('call1', {x, Inf, 'last'},
            'call2', {x, Inf, 'first'});
in(:, 1) = [];
in.call1 

struct ("field1", {1, "one"}, "field2", {2, "two"}, "field3", 3)


% Cells

c = cell(2, 2)

a = [1, 2; 3, 4];
num2cell(a, 1)

c = mat2cell(reshape(1:16, 4, 4), [3, 1], [3, 1])

c{1}

s = cellstr(['hello'; 'world'; ':)'])
strcmp('hello', s)

cellfun(@atan2, {1, 0}, {0, 1})

foo = @(s, x) NaN;

cellfun(@factorial, {-1, 2}, 'ErrorHandler', foo)

A = cell2struct({'Peter', 'Hannah', 'Robert'; 
                    185, 170, 168}, 
                    {'Name', 'Height'}, 1);
A(1)


a = {1, [2, 3], 4};
b = [a{:}]

c = {'GNU', 'Octave', 'is', 'Free'};
printf('%s ', c{:});

a = {1, rand(2, 2), 'three'};
b = {a{[1, 3]}}
b = a([1, 3])