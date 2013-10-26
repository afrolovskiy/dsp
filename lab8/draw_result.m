function [] = draw_result(u, noise, x_start, x_end, dx, uname, nname)
    [u_disc, x] = discretize(u, x_start, x_end, dx);
    [u_noised] = noise(u_disc);
    
    figure('Name', [uname, ' with ', nname]);
    
    eps = 0.2;
    len = length(u_noised);
    u_filtered = zeros(1, len);
    for i=1:len
        M = get_M(u_noised, u_noised(i), eps);
        smth = med(M);
        if check_barier(u_noised(i), smth, eps)
            u_filtered(i) = u_noised(i);
        else
            u_filtered(i) = smth;
        end
    end
   
    hold on;
    plot(x, u_noised, 'k', 'LineWidth', 2);
    plot(x, u_filtered, 'r');
    %plot(x, u_disc, 'b');
    %title('gauss fir');
    %legend('noised', 'filtered', 'original');
end

