u1 = @(x)(exp(-x.^2/2)+get_eps());
u2 = @(x)(exp(-x.^2)+get_delta());

x_start = -10.0;
x_end = 10.0;
dx = 1.0/25.0;


[u1_disc, x] = discretize(u1, x_start, x_end, dx);
eps = 0.06;%0.05 * max(u1_disc);
u1_fft = fft(u1_disc+eps);

[u2_disc, x] = discretize(u2, x_start, x_end, dx);
delta = 0.05; %* max(u2_disc);
u2_fft = fft(u2_disc+delta);


T = x_end - x_start;

H = regularize(u1_fft, eps, u2_fft, delta, dx, T);

figure;
plot(x, H);

