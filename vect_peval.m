function [vals] = vect_peval(p,x)
%VECT_PEVAL a function that vectorizes the eval(p, x) function so that it can be 
%applied to arrays.
%
%That is, VECT_EVAL evaluates a polynomial on an array
%(where polynomial is given as an array of coefficients)
%INPUT: p: a polynomial given as array of coefficients (same as for eval)
%       x: an array of real values
%OUTPUT: an array of real values s.t. vals(i) = p(x(i))

vals = [];
for i = 1:length(x)
    vals = [vals peval(p,x(i))];
end
end