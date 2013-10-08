function [u] = point_function(x)
    global x0 ampl;
    if abs(x - x0) < 1e-4
        u = ampl;
    else
        u = 0;
    end
end

