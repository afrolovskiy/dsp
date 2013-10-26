function [u_filtered] = apply_filter(u_noised, smooth, epsr, eps)
    len = length(u_noised);
    u_filtered = zeros(1, len);
    for i=1:len
        smth = smooth(locality(u_noised, i, epsr));
        if check_barier(u_noised(i), smth, eps)
            u_filtered(i) = u_noised(i);
        else
            u_filtered(i) = smth;
        end
    end
end

