function [] = draw_result(u, h, x_start, x_end, dx)
    [u_disc, x] = discretize(u, x_start, x_end, dx);
    [h_disc, x] = discretize(h, x_start, x_end, dx);
    [u_output] = convolution(u_disc, h_disc);
    
    figure;
    plot(x, u_output);
end

