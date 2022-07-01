% Sets

create = unique([1:3; 2:4; 3:5])

x = unique([1:3; 2:4; 3:5]);
y = x + 2;

union_ = union(x, y)
[tf, a_id] = ismember(x, union_)

[inter, x_id, y_id] = intersect(x, y)

comp = setdiff(x, y)

xor_ = setxor(x, y)