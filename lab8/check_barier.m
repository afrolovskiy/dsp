function [res] = check_barier(vk, smth, eps)
    diff = abs(vk - smth);
    if diff < eps
        res = true;
    else
        res = false;
    end
end

