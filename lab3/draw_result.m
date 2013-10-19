function [] = draw_result(u, h, x_start, x_end, dx)
    [u_disc, x] = discretize(u, x_start, x_end, dx);
    [h_disc, x] = discretize(h, x_start, x_end, dx);
    [u_output] = convolution(u_disc, h_disc);
    
    figure;
    hold on;
    
    plot(x, u_disc, 'k', 'LineWidth', 3);
    plot(x, h_disc, 'r', 'LineWidth', 2);
    
    N = length(u_output);
    x = zeros(1, N);
    x(1) = x_start;
    for i=2:N
        x(i) = x(i-1) + dx;
    end
    figure;
    plot(x, u_output, 'b');
end

