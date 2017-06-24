function [x, stop_itr]=GradientDescent1D(func, dF,x_init,eta, max_iters)
%[x,stop_itr]=GradientDescent1D(func, dF,x_init,eta): find x where func(x)= minimize
%using gradient descent method
%func: function
%dfunc: derivetive of func
%x_init
%eta: learning rate
er=1e-3;
x=x_init;
for i=1:max_iters
    if(abs(dF(x))<er)
        stop_itr=i-1;
        break;
    end
    x=x-eta*dF(x);    
end
end