function [] = draw_result(u, h, x_start, x_end, dx, uname, hname)
    [u_disc, x] = discretize(u, x_start, x_end, dx);
    [h_disc, x] = discretize(h, x_start, x_end, dx);
    [u_output] = convolution(u_disc, h_disc);
    
    figure;
    hold on;
    
    subplot(3, 1, 1)
    plot(x, u_disc, 'k', 'LineWidth', 3);
    title(uname);
    
    subplot(3, 1, 2)
    plot(x, h_disc, 'r', 'LineWidth', 2);
    title(hname);
    
    
    N = length(u_output);
    x = zeros(1, N);
    x(1) = x_start;
    for i=2:N
        x(i) = x(i-1) + dx;
    end
    subplot(3, 1, 3)
    plot(x, u_output, 'b');
    title(['convolution of ', uname, ' & ', hname]);
end

