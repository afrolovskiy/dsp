function [u] = impulse_noise(x)
    global NAMPL NCOUNT;
    u = x; len = length(x);
    for i=1:NCOUNT
        idx = ceil(rand*len);
        u(idx) = u(idx) + rand*NAMPL;
    end
end