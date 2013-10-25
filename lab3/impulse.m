function [u] = impulse(x)
    global X_LEFT X_RIGHT AMPL;
    if (X_LEFT <= x) && (x <= X_RIGHT)
        u = AMPL;
    else
        u = 0;
    end
end

