function [theta]=log_regression_GD(X,Y,alpha,max_iters)
% rows of X are training samples
% rows of Y are corresponding -1/1 values
% gradien descent theta
m=size(X,1);
n=size(X,2);
theta=zeros(n,1);
for ii=1:max_iters
    h=1./m.*(1.+exp(-X*theta));
    grad=1/m.*X'*(Y-h);
    theta=theta+alpha.*grad;
end

end