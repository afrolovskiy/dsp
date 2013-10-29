function delta = get_delta()
    tmp = rand(1);
    if (tmp>0.5)
        delta = rand(1)*0.05;
    else
        delta = (-1)*rand(1)*0.05;
    end
end