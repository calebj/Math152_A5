function [nf] = fact(n)
%FACT computes a factorial of a number
%INPUT: n : natural number
%OUTPUT: n! = n(n-1)(n-2)...1

nf = 1;

for i = [1:n]
    nf = nf*i;
end
end
