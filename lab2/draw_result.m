function [] = draw_result(f, x_start, x_end, dx)
    [u, x] = discretize(f, x_start, x_end, dx);
    figure;
    
    %dpf
    tic;
    initime = cputime;
    time1   = clock;
    [v] = dpf(u);
    fintime = cputime;
    elapsed = toc;
    time2   = clock;
    fprintf('DPF\n');
    fprintf('TIC TOC: %g\n', elapsed);
    fprintf('CPUTIME: %g\n', fintime - initime);
    fprintf('CLOCK:   %g\n', etime(time2, time1));
        
    plot(x, abs(v), 'k', 'LineWidth', 3);
    title('dpf');
    
    %bpf
    tic;
    initime = cputime;
    time1   = clock;
    [v] = bpf(u);
    fintime = cputime;
    elapsed = toc;
    time2   = clock;
    fprintf('BPF\n');
    fprintf('TIC TOC: %g\n', elapsed);
    fprintf('CPUTIME: %g\n', fintime - initime);
    fprintf('CLOCK:   %g\n', etime(time2, time1));
    
    hold on;
    plot(x, abs(v), 'r');
    title('bpf');    
end

