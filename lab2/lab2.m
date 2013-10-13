global eps; eps = 0.001;
global ampl; ampl = 5.0;
global x0; x0 = 1.0;
global x_left; x_left = -1.0;
global x_right; x_right = 1.0;
global sigma; sigma = 2.0;

a = -3.0;
b = 3.0;
dx = 0.01;

figure;
[u, x] = discretize(@impulse, a, b, dx);
plot(x, u);

figure;
[v] = dpf(u);
plot(1:1:length(v), abs(v), '--k');
