function [xt,it]=myGD1(eta,x0)
%cho ham mot bien
x=[-abs(x0):0.1:abs(x0)];
y=cost(@testFunc,x);
figure
xt=x0;
it=100;
for i=0:1:100
    plot(x,y,'b');
    hold on
    xold=cost(@testFunc,xt);
    plot(xt,xold,'ro');
    xt=xt-eta*cost(@gradOfTest,xt);
    xnew=cost(@testFunc,xt);
    plot(xt,xnew,'go');
    title('iter '+string(i)+' last value: '+string(xold)+' current value '+string(xnew));
    hold off
    pause(0.5);
    if abs(cost(@gradOfTest,xt))<1e-3
        it=i;
        break
    end
end
end