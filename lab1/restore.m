function [u_res, x_res] = restore(u_disc, x_disc, x_start, x_end, dx)
    global eps;
    x_res = x_start:eps:x_end;
    u_res = zeros(1, length(x_res));
    
    koeff = 1 / dx;
    for i = 1:length(x_rec)
        for j = 1:length(x_disc);
            u_res(i) = u_res(i) + u_disc(j) * sinc(koeff * (x_res(i) - x_disc(j))); 
        end
    end
end

