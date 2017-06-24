function val=grad_func(w)
    global x;
    global y;
    N=length(x);
    val=0.5/N*x'*(x*w-y);
end