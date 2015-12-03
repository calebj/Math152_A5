function [] = plot_compare(f, a, b, n)
%PLOT_COMPARE plots f(x) and its Taylor polynomial T_n(x) from x=a to x=b 
%on the same graph.
%INPUT: f  : a function handle
%       a, b : real numbers
%       n: a natural number
%OUPUT: the function displays a plot of f(x) and T_n(x) for x in [a, b]

%>YOUR CODE HERE
x = a:.01:b;
hold on;
plot(x,f(x));
for i = 0:n
    plot(x,taylor_poly(f,i));
end
end