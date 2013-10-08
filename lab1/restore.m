function [u_rec, x_rec] = restore(u_disc, x_disc, x_start, x_end, dx)
    global eps;
    x_rec = x_start:eps:x_end;
    u_rec = zeros(1, length(x_rec));
    
    koeff = 1 / dx;
    len_disc = length(x_disc);
    for i = 1:length(x_rec)
        sum = 0;
        for j = 1:len_disc
            sum = sum + u_disc(j) * sinc(koeff * (x_rec(i) - x_disc(j))); 
        end
        u_rec(i) = sum;
    end
end

