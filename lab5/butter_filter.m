function [H] = butter_filter(u)
    global NBUTTERWORT BD0;
    H = 1 ./ (1 + (BD0./u).^(2*NBUTTERWORT));
end


