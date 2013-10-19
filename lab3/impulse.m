function [u] = impulse(x)
    global x_left x_right ampl;
    if (x_left <= x) && (x <= x_right)
        u = ampl;
    else
        u = 0;
    end
end

