function [u, x] = discretize(f, x_start, x_end, dx)
    x = x_start:dx:x_end;
    u = zeros(1, length(x));
    for i = 1:length(x)
        u(i) = f(x(i));
    end
end

