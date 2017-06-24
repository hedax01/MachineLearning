function val=cost_func(w)
    global x;
    global y;
    N=length(x);
    val=0.5/N*norm((y-x*w)).^2;
end