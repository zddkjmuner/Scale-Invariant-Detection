function dog = dog1d(sigma, k, len)
% DOG1D - return difference of gaussians of std k*sigma and sigma
%
% Syntax: g = dog1d(sigma, k, len)
%
% Output is symmetric with unit sampling period.
% Zero is sampled only when len is odd.
%
% Inputs:
%   sigma: standard deviation
%   k: standard deviation ratio
%   len: output length.
%
% Outputs:
%   dog: difference of gaussians with dimension (1,len)
%

% Your code goes here %%%%%%%%%%%%%%%%%%%%%%
% use gaussian1d.m
sigma1 = k*sigma;
g = gaussian1d(sigma, len);
g1 = gaussian1d(sigma1,len);
dog = g1-g;
end
% End of your code %%%%%%%%%%%%%%%%%%%%%%%%%