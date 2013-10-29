function [res] = get_ro(dx, T, u1, u2, delta, eps, lambda)
    res = get_betta(dx, T, u1, u2, lambda) - ...
          (delta + eps*sqrt(get_gamma(dx, T, u1, u2, lambda))).^2;
end

