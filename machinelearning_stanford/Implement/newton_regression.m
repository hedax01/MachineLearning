function [x,ite]=newton_regression(err,x0)
x=x0;
% xnew=x-cost(@func,x)/cost(@gradFunc,x);
% ite_err=abs(xnew-x);
ite_err=1;
i=0;
while ite_err>err    
    xnew=x-cost(@func,x)/cost(@gradFunc,x);
    ite_err=abs(xnew-x);
    x=xnew;            
    ite=i;
    i=i+1;
end
end