constants;
a = -3.0;
b = 3.0;
dx = 0.1;

draw_result(@impulse, @impulse, a, b, dx, 'impulse', 'impulse');
draw_result(@impulse, @gauss, a, b, dx, 'impulse', 'gauss');
draw_result(@gauss, @gauss, a, b, dx, 'gauss', 'gauss');
