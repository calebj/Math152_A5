function [val] = peval(p, x)
%PEVAL evaluates a polynomial 
%INPUT: p : an array containg the coefficients of a polynomial P
%           P(x) = p(1) + p(2)x + ... + p(n)x^(n-1)
%       x : a real number
%OUTPUT: the value P(x)

val = 0;
for i = 0:length(p)-1
    val = val + p(i+1)*x^i;
end
end
    