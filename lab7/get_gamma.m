function [res] = get_gamma(dx, T, u1, u2, lambda)
    N = length(u1);
    res = 0;
    for m=1:N
        const = 1 + (2*pi*(m-1)/T).^2;
        numerator = abs(u2(m)).^2 * dx.^2 * abs(u1(m)).^2 * const;
        denominator = (abs(u1(m)).^2 * dx.^2 + lambda * const).^2;
        res = res + numerator ./ denominator;
    end
    res = dx/N * res;
end

