function [v] = dpf(u)
    N = length(u);
    v = zeros(1, N);
    koeff = -2*pi*1i/N
    for k=1:N
        for n=1:N
           v(k) = v(k) + u(n)*exp(koeff*(k-1)*(n-1))*(-1)^(n-1); 
        end        
    end
end

