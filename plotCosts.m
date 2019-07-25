function plotCosts(costs, t, y)
%PLOTCOSTS Plots the development of the costs into a new figure 
%   PLOTCOSTS(costs) Plots the whole history of the costs into a new figure.

figure;

%plot(1:numel(costs), costs, '-b', 'LineWidth', 2);
plot(1:numel(costs), costs, 'o-');
xlabel('Number of Clusters');
ylabel(y);
title(t)

% ============================================================

end
