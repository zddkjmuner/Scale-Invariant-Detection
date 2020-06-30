function [filter_cos,filter_sin] = gaborFilter2D(T_f, theta, Sigma, len)
% This function returns two 2D Gabor quadrature filters
% (square matrices).
%
% ARGUMENTS
% - T_f: spatial period in pixels
% - theta: carrier orientation in degrees (0 corresponds
% to oscillation along x-axis only)
% - Sigma: covariance of Gaussian envelope
% - len: output is len x len.
%
% OUTPUT
% filter_cos, filter_sin: two 2d matrices containing the real part
% and the imaginary part of the filter

% Your code goes here %%%%%%%%%%%%%%%%%%%%%%
% use gaussian2d.m
theta = theta/180*pi;
sq = zeros(len,len);
ss = [];
ss(1,1) = -(len -1)/2;
for i = 1:len-1
    ss(i+1) = ss(i)+1; 
end
[sqx, sqy] = meshgrid(ss,ss);
X = sqx*cos(theta)-sqy*sin(theta);
g = gaussian2d(Sigma, len);
filter_cos = g.*cos(2*pi/T_f.*X);
filter_sin = g.*sin(2*pi/T_f.*X);

end

% End of your code %%%%%%%%%%%%%%%%%%%%%%%%%

