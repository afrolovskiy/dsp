function [u] = gauss_noise(x)
    u = awgn(x, 15, 'measured');
end

