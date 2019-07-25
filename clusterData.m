function [centroids, idx, J] = clusterData(X, K, max_inits, max_iters, plot)
%CLUSTERDATA Groups data into k clusters
%   CLUSTERDATA(X, K, max_inits, max_iters) Groups data into k cluster
%   using at most max_inits attempts to initialize centroids.

minJ = Inf;
for i = 1:max_inits
    initial_centroids = kMeansInitCentroids(X, K);
    [centroids, idx, J] = runkMeans(X, initial_centroids, max_iters, false);
    if J < minJ
        minJ = J;
        minJ_initial_centroids = initial_centroids;
    end
end

[centroids, idx, J] = runkMeans(X, minJ_initial_centroids, max_iters, plot);
% Plot clustering

end