function [u] = gauss(x)
    global AMPL;
    global SIGMA;
    u = AMPL * exp(-x^2/SIGMA^2);
end

