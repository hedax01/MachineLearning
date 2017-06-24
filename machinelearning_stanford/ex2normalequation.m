clear all; close all; clc
x = load('ex2x.dat'); y = load('ex2y.dat');

m = length(y); % number of training examples


% Plot the training data
figure; % open a new figure window
plot(x, y, 'o');
hold on
stem(x, y);
ylabel('Height in meters')
xlabel('Age in years')

% find thete base normal equation
x = [ones(m, 1) x]; % Add a column of ones to x

theta=inv(x'*x)*x'*y;
% theta=(x' * x)\x' * y

hold on; % keep previous plot visible
plot(x(:,2), x*theta, '-')
legend('Training data', 'Linear regression')
hold off % don't overlay any more plots on this figure

