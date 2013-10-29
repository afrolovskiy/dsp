function eps = get_eps()
    tmp = rand(1);
    if (tmp>0.5)
        eps = rand(1)*0.05;
    else
        eps = (-1)*rand(1)*0.06;
    end
end