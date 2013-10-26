function [res] = med(values)
    idx = ceil((length(values) + 1)/2);
    res = values(idx);
end

