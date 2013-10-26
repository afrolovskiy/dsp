function [res] = get_M(u, vl, eps)
    len = length(u);
    temp = zeros(1, len);
    curlen = 0;
    for i=1:len
        if abs(vl - u(i)) < eps
            curlen = curlen + 1;
            temp(curlen) = u(i);
        end
    end
    res = temp(1:curlen+1);
end

