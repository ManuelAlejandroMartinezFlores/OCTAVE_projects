% Plot
angles = [0 : pi/3 : 2*pi];
y = sin(angles);
h = plot(angles, y)

angles = linspace(0, 2*pi, 100);
y = sin(angles);
h = plot(angles, y, 'ro');
title('y = sin(x)');
xlabel('Angle');
ylabel('Value');
grid on;
saveas(h, 'plots/plot.png');




% Multiple 

hf = plot(angles, y, ':');
hold on;
plot(angles, cos(angles), '-')
legend('Sin', 'Cos');
saveas(hf, 'plots/sin_cos.png');
hold off;

% Figure
h = figure(1, 'Position', [0 0 1000 400]) % [x y w h]
subplot(1, 2, 1);
plot(angles, tan(angles));
title('y = tan(x)')
subplot(1, 2, 2);
plot(angles, tan(angles));
axis([0 7 -5 5]);
title('y = tan(x) resize');
saveas(h, 'plots/multiple.png');

