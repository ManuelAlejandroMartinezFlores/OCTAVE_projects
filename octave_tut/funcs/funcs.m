% Functions tutorial

angles = linspace(0, 360, 5);
sind(angles);

t = -1 : 0.1 : 4;
v = ustep(t, 0) - ustep(t, 1);
h = plot(t, v);
axis([-1 4 -1 2]);
saveas(h, 'ustep.png');