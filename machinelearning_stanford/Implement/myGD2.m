function [w,sw,it]=myGD2(w_init,grad,eta)
w=w_init;
sw=w';
for it=1:1:100
    if norm(grad(w))/length(w)<1e-3
        break;
    end
    w=w-eta*grad(w);
    sw=[sw;w'];
    
    
end
end