function [H] = butter_filter(u)
    global NBUTTERWORT BD0;
    H = 1 ./ (1 + (u./BD0).^(2*NBUTTERWORT));
end


