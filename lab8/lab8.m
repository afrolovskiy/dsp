constants;
a = -3.0;
b = 3.0;
dx = 0.005;

draw_result(@gauss, @impulse_noise, a, b, dx, 'gauss', 'impulse noise');
%draw_result(@gauss, @gauss_noise, a, b, dx, 'gauss', 'gauss_noise');
