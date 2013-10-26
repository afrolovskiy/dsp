function [res] = mean(values)
    len = length(values);
    sum = 0;
    for i=1:len
        sum = sum + values(i);
    end
    res = sum / len;
end

