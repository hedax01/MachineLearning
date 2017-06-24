clc
clear all
X = load('logistic_x.txt');
Y = load('logistic_y.txt');
% X=[0.50, 0.75, 1.00, 1.25, 1.50, 1.75, 1.75, 2.00, 2.25, 2.50, 2.75, 3.00, 3.25, 3.50, 4.00, 4.25, 4.50, 4.75, 5.00, 5.50];
% X=X';
% Y=[0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1];
% Y=Y';
% plot(X(Y>0),Y(Y>0),'*');
% hold on
% plot(X(Y==0),Y(Y==0),'o');
% plot(X,Y,'o');
X = [ones(size(X, 1), 1) X];
theta = zeros(size(X(1,:)))'; % initialize fitting parameters
theta(1)=0;
theta(2)=0;
MAX_ITR = 20000;
alpha = 0.05;
for it=0:MAX_ITR
for num_iterations = 1:length(Y)
    
    temp= X(num_iterations,:)*theta;
    Z=sigmoid(temp);
    temp2=alpha .* (Y(num_iterations)-Z)*X(num_iterations,:);
    theta = theta + temp2';    
end
end
disp('theta:');
disp(theta);
