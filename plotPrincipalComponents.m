function plotPrincipalComponents(X, U, S, mu)
%PLOTPRINCIPALCOMPONENTS plots data points in X and principal components
%   PLOTPRINCIPALCOMPONENTS(X, U, S, MU) plots data points in X and principal components

%  Visualize the example dataset
figure
plot(X(:, 1), X(:, 2), 'bo');
axis([0.5 6.5 2 8]); axis square;
title('Visualization of eigenvectors')
xlabel('X1')
ylabel('X2')

% Plot principal components
hold on;
xlim([0.5 19.2])
ylim([0.7 19.9])
drawLine(mu, mu + 1.5 * S(1,1) * U(:,1)', '-k', 'LineWidth', 2);
drawLine(mu, mu + 1.5 * S(2,2) * U(:,2)', '-k', 'LineWidth', 2);
hold off;

end
