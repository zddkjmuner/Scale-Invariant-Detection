function g = gaussian1d(sigma, len)
% GAUSSIAN1D - make discrete normalized centered 1D Gaussian
%
% Syntax: g = gaussian1d(sigma, len);
%
% Output is symmetric with unit sampling period.
% Zero is sampled only when len is odd.
% Examples:
%   if len==3, sample points are [-1,0,1]
%   if len==4, sample points are [-1.5, -0.5, 0.5, 1.5]
%
% Inputs:
%   sigma: standard deviation
%   len: output length.
%
% Outputs:
%   g: gaussian filter of dimension (1,len)


% Your code goes here %%%%%%%%%%%%%%%%%%%%%%
% use gaussian1d.m

ss = [];
ss(1) = -(len -1)/2;
for i = 1:len-1
    ss(i+1) = ss(i)+1; 
end
    
g = 1./(sigma*sqrt(2*pi))*exp(-ss.^2./(2*sigma^2));
g = g*1/sum(g);
end
% End of your code %%%%%%%%%%%%%%%%%%%%%%%%%