function [res] = med(values)
    idx = ceil((length(values) + 1)/2);
    sorted = sort(values);
    res = sorted(idx);
end

