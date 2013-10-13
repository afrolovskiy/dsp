function [u] = gauss(x)
    global ampl;
    global sigma;
    u = ampl * exp(-x^2/sigma^2);
end

