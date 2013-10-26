function [res] = locality(u, idx, eps)
    len = length(u);
    
    idx1 = idx - eps;
    if idx1 <= 0
        idx1 = 1;
    end
    
    idx2 = idx + eps;
    if idx2 > len
        idx2 = len;
    end
    
    res = u(idx1: idx2);
end

