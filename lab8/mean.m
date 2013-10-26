function [res] = mean(values)
    len = length(values);
    res = sum(values) / len;
end

