function [] = draw_result(u, noise, x_start, x_end, dx, uname, nname)
    [u_disc, x] = discretize(u, x_start, x_end, dx);
    [u_noised] = noise(u_disc);
    
    figure('Name', [uname, ' with ', nname]);
        
    u_filtered = apply_filter(u_noised, @med, 3, 0.1);
    subplot(2, 1, 1);
    hold on;
    plot(x, u_noised, 'k', 'LineWidth', 2);
    plot(x, u_filtered, 'r');
    title('mediane smoothing')
    legend('noised', 'filtered');
        
    u_filtered = apply_filter(u_noised, @mean, 3, 0.1);
    subplot(2, 1, 2)
    hold on;
    plot(x, u_noised, 'k', 'LineWidth', 2);
    plot(x, u_filtered, 'r');
    title('average smoothing');
    legend('noised', 'filtered');
    
end

