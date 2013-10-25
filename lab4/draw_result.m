function [] = draw_result(u, noise, x_start, x_end, dx, uname, nname)
    [u_disc, x] = discretize(u, x_start, x_end, dx);
    [u_noised] = noise(u_disc);
    
    figure('Name', [uname, ' with ', nname]);
    
    subplot(2, 2, 1);
    hold on;
    plot(x, u_noised, 'k');
    plot(x, u_disc, 'b');
    title('noised & original');
    legend('noised', 'original');
    
    % бих фильтр баттеруорта
    [b, a] = butter(2, 0.15,'low');
    u_filtered = filter(b, a, u_noised);
    subplot(2, 2, 2);
    hold on;
    plot(x, u_noised, 'k');
    plot(x, u_filtered, 'r');
    plot(x, u_disc, 'b');
    title('butter iir');
    legend('noised', 'filtered', 'original');
    
    % ких филльтр баттеруорта
    u_filtered = firf(u_noised, @butter_filter);
    subplot(2, 2, 3);
    hold on;
    plot(x, u_noised, 'k');
    plot(x, u_filtered, 'r');
    plot(x, u_disc, 'b');
    title('butter fir');
    legend('noised', 'filtered', 'original');
    
    % ких филльтр гаусса
    u_filtered = firf(u_noised, @gauss_filter);
    subplot(2, 2, 4);
    hold on;
    plot(x, u_noised, 'k');
    plot(x, u_filtered, 'r');
    plot(x, u_disc, 'b');
    title('gauss fir');
    legend('noised', 'filtered', 'original');
end

