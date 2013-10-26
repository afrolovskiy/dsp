function [H] = gauss_filter(u)
    global GD0;
    H = 1 - exp(-u./(2*GD0.^2));
end

