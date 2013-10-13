global eps; eps = 0.001;
global ampl; ampl = 2.0;
global x0; x0 = 1.0;
global x_left; x_left = -1.0;
global x_right; x_right = 1.0;
global sigma; sigma = 0.5;

a = -3.0;
b = 3.0;
dx = 0.1;

draw_result(@impulse, a, b, dx);
%draw_result(@gauss, a, b, dx);
