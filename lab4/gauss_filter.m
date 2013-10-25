function [H] = gauss_filter(u)
    global GD0;
    H = exp(-u./(2*GD0.^2));
end

