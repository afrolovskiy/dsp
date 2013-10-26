function [] = draw_result(u, noise, x_start, x_end, dx, uname, nname)
    [u_disc, x] = discretize(u, x_start, x_end, dx);
    [u_noised] = noise(u_disc);
    u_noise = u_noised - u_disc;
    
    figure('Name', [uname, ' with ', nname]);
    
    f_noised = fft(u_noised);
    f_noise = fft(u_noise);
    
    H = vinner(f_noised, f_noise);
    u_filtered = ifft(H.*f_noised);
    
    hold on;
    plot(x, u_noised, 'k', 'LineWidth', 2);
    plot(x, u_filtered, 'r');
    legend('noised', 'filtered');
end

