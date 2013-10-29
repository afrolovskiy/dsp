function [H] = regularize(u1, eps, u2, delta, dx, T)
    ro = @(lambda)(get_ro(dx, T, u1, u2, delta, eps, lambda));
    
    %alpha = 0.01:0.001:1;
    %betta = @(lambda)(get_betta(dx, T, u1, u2, lambda));
    %gamma = @(lambda)(get_gamma(dx, T, u1, u2, lambda));
    
    %hold off;
    %plot(alpha, ro(alpha)); 
    
    lambda = fzero(ro, 1, 0.001);
    
    N = length(u1);
    H = zeros(1, N);
    u1_conj = conj(u1);
    for k=1:N
        for m=1:N
            const = 1 + (2*pi*(m-1)/T)^2;
            numerator = exp(2*pi*1i*k*(m-1)/N) * u1_conj(m) * u2(m);
            denominator = abs(u1(m))^2 * dx^2 + lambda * const;
            H(k) = H(k) + numerator/denominator;
        end
        H(k) = dx/N * H(k);
    end    
end

