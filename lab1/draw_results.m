function [] = draw_results(f, x_start, x_end, dx)
    figure;
    hold on;    
    % ���������������� ������
    [u, x] = discretize(f, x_start, x_end, dx);
    stem(x, u);
    % �������������� ������
    [u, x] = restore(u, x, x_start, x_end, dx);
    plot(x, u, '--k');
    % �������� ������  
    global eps;
    [u, x] = discretize(f, x_start, x_end, eps);
    plot(x, u, 'r')
end

