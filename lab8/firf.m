function [u_filtered] = firf(u_noised, transfer_func)
    H = transfer_func(u_noised);
    u_filtered = ifft(H.*fft(u_noised));
end

