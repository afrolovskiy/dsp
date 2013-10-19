function [v] = bpf(u)
    N = length(u);
    v = zeros(1, N);
    N1 = floor(N/2);    
    s = @(n)(u(n)*(-1)^(n-1));
    for k=1:N1
        S0 = 0; S1 = 0;
        
        for n=1:N1
            W = exp(-2*pi*1i*(k-1)*(n-1)/N1);
            S0 = S0 + s(2*n-1)*W; 
            S1 = S1 + s(2*n+1-1)*W; 
        end
   
        W = exp(-2*pi*1i*(k-1)/N);
        v(k) = S0 + S1*W; 
        v(k+N1) = S0 - S1*W; 
    end
end