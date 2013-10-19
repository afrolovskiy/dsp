function [u_output] = convolution(u_disc, h_disc)
    [v_input] = bpf(u_disc);
    [h_input] = bpf(h_disc);
    
    N = length(v_input);
    v_output = zeros(1, N);
    for k=1:N
        v_output(k) = v_input(k)*h_input(k);    
    end
    
    v_output_pf = bpf(v_output);
    u_output = zeros(1, N);
    for k=1:N
       u_output(k) = 1/v_output_pf(k); 
    end
end

