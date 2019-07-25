function visualizeGapStatistic(X)
%VISUALIZEDISTORTIION Generates the elbow plot
%       VISUALIZEDISTORTIION(X, initial_centroids, max_iters) generates
%       an elbow plot visualizing costs for respective K 
%

eva = evalclusters(X,'kmeans','gap','KList',[1:20]);

% Plot gap
plotCosts(eva.CriterionValues, 'Gap statistics', 'Calculated gap')

% =========================================================================

end
