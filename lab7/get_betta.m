function [res] = get_betta(dx, T, u1, u2, lambda)
    N = length(u1);
    res = 0;
    for m=1:N
        const = 1 + (2*pi*(m-1)/T).^2;
        numerator = lambda.^2 * const * abs(u2(m)).^2;
        denominator = (abs(u2(m)).^2 * dx.^2 + lambda*const).^2;
        res = res + numerator ./ denominator;
    end
    res = dx/N * res;
end

