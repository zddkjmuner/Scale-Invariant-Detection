function g = gaussian2d(Sigma, len)
% GAUSSIAN2D - make discrete normalized centered 2D Gaussian
%
% Syntax: g = gaussian2d(Sigma, len);
%
% Output is symmetric with unit sampling period.
% (0,0) is sampled only when len is odd.
%
% Inputs:
%   Sigma: 2x2 covariance matrix
%   len: output is len x len.
%

% Your code goes here %%%%%%%%%%%%%%%%%%%%%%
sq = zeros(len,len);
ss = [];
ss(1,1) = -(len -1)/2;
for i = 1:len-1
    ss(i+1) = ss(i)+1; 
end
[sqx, sqy] = meshgrid(ss,ss);

Sigma_x = sqrt(Sigma(1,1));
Sigma_y = sqrt(Sigma(2,2));
coe1 = Sigma(1,2)/Sigma_x;
coe = coe1/Sigma_y;

g = 1/(2*pi*Sigma_x*Sigma_y*sqrt(1-coe^2))*exp(-1/(2*(1-coe^2))*(1/(Sigma_x^2)*sqx.^2 + 1/(Sigma_y^2)*sqy.^2 - 2*coe*(sqx.*sqy)/(Sigma_x*Sigma_y)));
g = g*1/(sum(sum(g)));
% mu=[0,0];
% p=mvnpdf([sqx(:),sqy(:)],mu,Sigma);
% g = reshape(p,len,len);
% g = g.*1/sum(sum(g));

end
% End of your code %%%%%%%%%%%%%%%%%%%%%%%%%