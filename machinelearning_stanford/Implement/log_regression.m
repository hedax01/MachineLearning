function [theta, ll]=log_regression(X,Y,max_iters)
% rows of X are training samples
% rows of Y are corresponding -1/1 values
% newton raphson: theta = theta - inv(H)* grad;
% with H = hessian, grad = gradient
mm=size(X,1);
nn=size(X,2);

theta=zeros(nn,1);
ll = zeros(max_iters, 1);
for ii = 1:max_iters
    margins = Y .* (X * theta);
    ll(ii) = (1/mm) * sum(log(1 + exp(-margins)));
    probs = 1 ./ (1 + exp(margins));
    grad = -(1/mm) * (X' * (probs .* Y));
    H = (1/mm) * (X' * diag(probs .* (1 - probs)) * X);
    theta = theta - H \ grad;
end

end