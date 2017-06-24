%design algorithm for c++

clear all; close all; clc
x = load('ex2x.dat'); y = load('ex2y.dat');

m = length(y); % number of training examples

% Plot the training data
figure; % open a new figure window
 plot(x, y, 'o');
ylabel('Height in meters')
xlabel('Age in years')

x = [ones(m, 1) x]; % Add a column of ones to x
theta = zeros(size(x(1,:)))'; % initialize fitting parameters
MAX_ITR = 1500;
costFunc=zeros(1,MAX_ITR+1);
alpha = 0.07;
hold on; % keep previous plot visible
tic

for num_iterations = 1:MAX_ITR
    
    %here is J(theta)
    costFunc(num_iterations+1)=sum((x*theta-y).^2)/2;
    deltaEr=abs(costFunc(num_iterations+1)-costFunc(num_iterations));
    if(deltaEr<0.00005)
       plot(x(:,2), x*theta, '-')
    end
    % This is a vectorized version of the 
    % gradient descent update formula
    % It's also fine to use the summation formula from the videos
    
    % Here is the gradient
    grad = (1/m).* x' * ((x * theta) - y);
    
    % Here is the actual update
    theta = theta - alpha .* grad;
    
    % Sequential update: The wrong way to do gradient descent
    % grad1 = (1/m).* x(:,1)' * ((x * theta) - y);
    % theta(1) = theta(1) + alpha*grad1;
    % grad2 = (1/m).* x(:,2)' * ((x * theta) - y);
    % theta(2) = theta(2) + alpha*grad2;
   
    
%     pause(0.5);
   
    
end
% print theta to screen

plot(x(:,2), x*theta, '-')
toc
disp( theta)
disp(min(costFunc))
figure
plot(costFunc)
