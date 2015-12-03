
%% Assignment 5 
%Welcome to assignment 5! This assignment is all about Taylor polynomials.
import tests.* %this allows us to call the test functions from another file
clc
%% Testing factorials
fact_test_1();
fact_test_2();
%% Testing polynomial evaluation
eval_test_1();
eval_test_2();
%% Testing vectorized polynmomial evaluation
vect_eval_test_1();
vect_eval_test_2();
%% Testing taylor polynomial
taylor_test_1();
taylor_test_2();
taylor_test_3();
taylor_test_4();
%% Testing plotting taylor polynomial, part 1
plot_compare_test_1();
%% Testing plotting taylor polynomial, part 2
plot_compare_test_2();
%% Taylor plot bonanza!
%Compares plots various functions with plots of T3 for them
taylor_plot_bonanza();
    
%% Functions
%
% <include>fact.m</include>
%
%
% <include>peval.m</include>
%
%
% <include>vect_peval.m</include>
%
%
% <include>taylor_poly.m</include>
%
%
% <include>plot_compare.m</include>
%

%% Test code
%
% <include>tests.m</include>
%

