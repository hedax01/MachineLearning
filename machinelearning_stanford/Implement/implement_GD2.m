%implement gradient descent 2
clc
clear all
global x;
global y;
x=[1:1:1000]/1000;
x=x';
ran=randn(1000,1);
ran=ran/max(ran);
y=4+3*x+ran;
x=[ones(1000,1),x];

w_init=[2;1];
eta=1;
[w,sw,it]=myGD2(w_init,@grad_func,1);
valueJ=zeros(it,1);
for i=1:length(sw)
    valueJ(i)=cost_func(sw(i,:)');
end

plot(sw(:,1),sw(:,2),'+');
hold on;
NL=100;
w1=linspace(3,4.5,NL);
w2=linspace(1.5,3.5,NL);
[X,Y]=meshgrid(w1,w2);
J_grid=zeros(NL,NL);
for i=1:1:NL
   for j=1:1:NL 
       w_v=[X(i,j);Y(i,j)];
      J_grid(i,j)= cost_func(w_v);
   end
end

contour(X,Y,J_grid);