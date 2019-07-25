function X = generate2DData()
%GENERATE2DDATA Generates randomly clustered data 
%   GENERATE2DDATA(file, n) generates randomly distributed data scattered
%   around 3 data datapoints in 2d.

% Group 1
xmin=0;
xmax=4;
n=10;
k1 =xmin+rand(n, 2)*(xmax-xmin);

% Group 2
xmin=8;
xmax=12;
n=10;
k2 =xmin+rand(n, 2)*(xmax-xmin);

% Group 3
xmin=16;
xmax=20;
n=10;
k3 =xmin+rand(n, 2)*(xmax-xmin);

%Concatenate groups
X = [k1; k2; k3];

% ============================================================

end
