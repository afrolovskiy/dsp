function [v] = bpf(u)
    N = length(u);
    v = zeros(1, N);

    N1 = floor(N/2);
    S0 = zeros(1, N1);
    S1 = zeros(1, N1);
    
    koeff = -4*pi*1i/N;
    for k=1:N1
        for n=1:N1
            W = exp(koeff*(k-1)*(n-1));
            S0(k) = S0(k) + u(2*n) * W; 
            S1(k) = S1(k) + u(2*n+1) * W; 
        end
    end
    
    koeff = -2*pi*1i/N;
    for k=1:N1
        W = exp(koeff*(k-1));
        v(k) = S0(k) + S1(k)*W; 
        v(k+N1) = S0(k) - S1(k)*W; 
    end
end