function [v] = bpf(u)
    N = length(u);
    v = zeros(1, N);

    s = @(k)(u(k)*(-1)^(k-1));
    N1 = floor(N/2);    
    koeff = -2*pi*1i/N;
    for k=1:N1
        S0 = 0; S1 = 0;
        
        for n=1:N1
            W = exp(2*koeff*(k-1)*(n-1));
            S0 = S0 + s(2*n-1) * W; 
            S1 = S1 + s(2*n) * W; 
        end
   
        W = exp(koeff*(k-1));
        v(k) = S0 + S1*W; 
        v(k+N1) = S0 - S1*W; 
    end
end