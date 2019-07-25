function X = importDevData(f, n)
%IMPORTDEVDATA Imports the dev data into a new table 
%   IMPORTDEVDATA(file, n) imports the data of a given file f into a table and
%   plots the first n lines.

% Import the file 
load(f);

% Plot the first n rows
top = X(1:n, :);
display(top)

% ============================================================

end
