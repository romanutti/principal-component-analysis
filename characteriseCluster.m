function characteriseCluster(X, idx, K, n, column_header)
% TODO

% Calculate characteristics per cluster
m = size(X, 1);
no_columns = size(X, 2);
no_clusters = K;

shares = zeros(no_clusters, 1);
variances_indexes = zeros(no_clusters, n);
variances = zeros(no_clusters, n);
means = zeros(no_clusters, n);
mins = zeros(no_clusters, n);
maxs = zeros(no_clusters, n);

for k = 1:K
    c_indexes = find(idx == k);
    x = X(c_indexes, :);

    % Calculate shares
    share = length(x) / m;
    shares(k, :) = round(share * 100)/100;
      
    % Calculate variances
    variance = var(x);
    [values column_indexes] = sort(variance,'ascend');
    rel_columns = column_indexes(1:n);
    variances_indexes(k, :) = rel_columns ;
    variances(k, :) = variance(variances_indexes(k, :));
    
    % Calculate means
    means(k, :) = mean(x(:, rel_columns));
    
    % Calculate mins
    mins(k, :) = min(x(:, rel_columns));
    
    % Calculate maxs
    maxs(k, :) = max(x(:, rel_columns));
end

fprintf('Most similar features\n')
for k = 1:K  
    fprintf('Cluster %i, (%.2f amount of total data)\n', k, shares(k))
    column_indexes = variances_indexes(k, :);
    
    cur_var = variances(k, :);
    cur_mean = means(k, :);
    cur_min = mins(k, :);
    cur_max = maxs(k, :);
    
    for c = 1:length(column_indexes)
        idx = column_indexes(c);
        column_name = column_header(idx);

        fprintf('  - %s, (var: %.2f, avg: %.2f, min: %.2f, max: %.2f)\n', column_name, cur_var(c), cur_mean(c), cur_min(c), cur_max(c))
    end
end

end