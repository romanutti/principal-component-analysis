function visualizeDistorion(X, max_iters)
%VISUALIZEDISTORTIION Generates the elbow plot
%       VISUALIZEDISTORTIION(X, initial_centroids, max_iters) generates
%       an elbow plot visualizing costs for respective K 
%
% Selected values of k 
k_vec = [2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20]';

% Settings for running K-means
costs = zeros(length(k_vec), 1);
   
for i = 1:length(k_vec)
    K = k_vec(i);
    
    % Initialize the centroids randomly. 
    initial_centroids = kMeansInitCentroids(X, K);
    
    % Cluster data
    [centroids, idx, J] = runkMeans(X, initial_centroids, max_iters, false);
    
    % Add costs to history
    costs(i) = J;    
    
end

% Plot costs
plotCosts(costs, 'Elbow plot', 'Costs')

% =========================================================================

end
