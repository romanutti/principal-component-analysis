function plotMap(x, y, t)
%PLOTMAP Plots the data point of y in a map using a specified title 
%   PLOTMAP(x, y) plots the data points of y in a map retrieved from long/lat
%   data points from x and sets a title.

% Set default image size
set(groot,'defaultfigureposition',[600 300 480 250])

figure;
lat = x(:, 1);
long = x(:, 2);

cmap = hsv(4); %// define your colormap here
gscatter(long,lat, y, cmap)

title(t)
xlabel('Latitude')
ylabel('Longitude')

% Set default image size
set(groot,'defaultfigureposition',[600 250 400 250]) 

% ============================================================

end
