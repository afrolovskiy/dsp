function [v] = dpf(u)
    N = length(u);
    v = zeros(1, N);
    s = @(n)(u(n)*(-1)^(n-1));
    for k=1:N
        for n=1:N
           v(k) = v(k) + s(n)*exp(-2*pi*1i*(k-1)*(n-1)/N); 
        end        
    end
end

