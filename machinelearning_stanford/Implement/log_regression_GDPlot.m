clear all
X = load('logistic_x.txt');
Y = load('logistic_y.txt');
X = [ones(size(X, 1), 1) X];
max_iters=20000;
alpha=0.05;
% [theta] = log_regression_GD(X ,Y,0.05,1500);

m=size(X,1);
n=size(X,2);
theta=zeros(n,1);
for ii=1:max_iters
    h=1./(1.+exp(-X*theta));
    grad=(1/m).*X'*(Y-h);
    theta=theta+alpha.*grad;
end
disp(theta);
m=size(X,1);
figure; hold on;
plot(X(Y < 0, 2), X(Y < 0, 3), 'rx', 'linewidth', 2);
plot(X(Y > 0, 2), X(Y > 0, 3), 'go', 'linewidth', 2);
x1 = min(X(:,2)):.01:max(X(:,2));
x2 = -(theta(1) / theta(3)) - (theta(2) / theta(3)) * x1;
plot(x1,x2, 'linewidth', 2);
xlabel('x1');
ylabel('x2');