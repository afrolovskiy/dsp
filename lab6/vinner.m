function [H] = vinner(b, h)
    H = (abs(b).^2 - abs(h).^2) ./ (abs(b).^2);
end

