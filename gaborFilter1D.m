function [filter_cos,filter_sin] = gaborFilter1D(T_f, sigma, len)
% This function returns two 1D Gabor quadrature filters
% (vectors).
%
% Unit sampling period; zero is sampled only when filter_length is odd.

% ARGUMENTS
% - T_f: spatial period in pixels
% - sigma: Gaussian envelope sigma
% - len: length of the output

%
% OUTPUT
% filter_cos, filter_sin: (1,len) vectors containing the real part
% and the imaginary part of the filter

% Your code goes here %%%%%%%%%%%%%%%%%%%%%%
% use gaussian1d for the Gaussian envelope

ss = [];
ss(1) = -(len-1)/2;
for i = 1:len-1
    ss(i+1) = ss(i)+1; 
end

g = gaussian1d(sigma,len);
filter_cos = g.*cos(2*pi/T_f*ss);
filter_sin = g.*sin(2*pi/T_f*ss);
% filter_cos = filter_cos*1/sum(filter_cos);
% filter_sin = filter_cos*1/sum(filter_sin);
end
% End of your code %%%%%%%%%%%%%%%%%%%%%%%%%

