function numerical_grad(w, cost)
    esp=1e-4;
    g=zeros(size(w));
    for i=1:length(g)
       w_r=w(i)+esp;
       w_l=w(i)-esp;
%        g(i)=
    end

end