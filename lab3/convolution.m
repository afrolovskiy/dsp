function [u_output] = convolution(u_disc, h_disc)
    N = length(u_disc);
    
    u_new = zeros(1, 2*N);
    u_new(1:N) = u_disc;
    h_new = zeros(1, 2*N);
    h_new(1:N) = h_disc;

    [v_input] = fft(u_new) ./ N;
    [h_input] = fft(h_new) ./ N;

    u_output = ifft(v_input .* h_input);
end

