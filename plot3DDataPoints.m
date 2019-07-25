function plot3dDataPoints(X_rec, idx, K)
%PLOTDATAPOINTS plots data points in X, coloring them so that those with the same
%index assignments in idx have the same color
%   PLOTDATAPOINTS(X, idx, K) plots data points in X, coloring them so that those 
%   with the same index assignments in idx have the same color

%  Sample 1000 random indexes (since working with all the data is
%  too expensive. If you have a fast computer, you may increase this.
sel = floor(rand(1000, 1) * size(X_rec, 1)) + 1;

%  Setup Color Palette
palette = hsv(K);
colors = palette(idx(sel), :);

%  Visualize the data and centroid memberships in 3D
figure;
scatter3(X_rec(sel, 1), X_rec(sel, 2), X_rec(sel, 3), 10, colors);
title('House dataset plotted in 3D. Color shows centroid memberships');
xlabel('PC1')
ylabel('PC2')
zlabel('PC3')

end
