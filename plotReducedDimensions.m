function plotReducedDimensions(X_norm, X_rec)
%PLOTREDUCEDDIMENSIONS Plots the dimension reduction into a new figure 
%   PLOTREDUCEDDIMENSIONS(X_NORM, X_REC) Plots the dimension reduction into
%   a new figure 

figure;

%  Draw lines connecting the projected points to the original points
plot(X_norm(:, 1), X_norm(:, 2), 'bo');
%axis([-4 3 -4 3]); axis square
xlim([-0.5 0.5])
ylim([-0.5 0.5])

hold on;
plot(X_rec(:, 1), X_rec(:, 2), 'ro');
for i = 1:size(X_norm, 1)
    drawLine(X_norm(i,:), X_rec(i,:), '--k', 'LineWidth', 1);
end
title('Dimension reduction')
xlabel('X1')
ylabel('X2')
hold off
% ============================================================

end
