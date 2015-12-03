classdef tests 
%TESTS contains the tests for all the functions here
    
    
    methods(Static = true) 
   
	
	%Factorial test 1: check that the values are what they should be
    function fact_test_1()
        disp('Testing fact():');
        fprintf('0! = %d, 5! = %d, 7! = %d\n', fact(0), fact(5), fact(7));
    end
    
   
    %Complete this test to compute the 5'th row of Pascal's triangle
    %using your factorial function
    %(NOTE: this is not the best way to compute them, but a good way to check
    %that everything works)
    function fact_test_2()
        disp('Testing fact() : computing binomial coefficients');
        disp('The fifth row of Pascal triangle is:');
        
        %>YOUR CODE HERE
        choose = @(n,k) fact(n)/(fact(k)*fact(n-k));
        [choose(4,0) choose(4,1) choose(4,2) choose(4,3) choose(4,4)]
    end
    
   
    %Polynomial evaluation test: check that your code produces the right values
    function eval_test_1()
        disp('Testing eval() with p(x)=2 + 3x + 5x^2 + 7x^3:');
        p = [2 3 5 7];
        fprintf('p(0) = %d, p(1) = %d, p(2) = %d \n',peval(p,0), peval(p,1), peval(p,2));
    end
    
    %%
    %Polynomial evaluation test: (use the formula for the geometric series
    %to fill in the blanks).
    function eval_test_2()
        disp('Testing eval() with p(x)=1 + x + x^2 + ... + x^n:');
        N = 10;
        p = ones(1,N);
        fprintf('p(1/2) = %d (should be approximately 2)\n', peval(p, 1/2));
        fprintf('p(1/3) = %d (should be approximately 3/2)\n', peval(p, 1/3));
        fprintf('p(1/5) = %d (should be approximately 5/4)\n', peval(p, 1/5));
        disp('');
    end
    
    %%
    %Tests the vect_eval to display a list of values
    function vect_eval_test_1()
        disp('Testing vect_eval() with p(x)=2 + 3x + 5x^2 + 7x^3:');
        p = [2 3 5 7];
        x = [0 1 2];
        disp('p(x) for x = [0 1 2] is:');
        disp(vect_peval(p,x));
        disp('');
    end
    
    %%
    %Tests vect_eval to plot a polynomial
    function vect_eval_test_2()
        disp('Testing vect_eval() with p(x)=x^3 - 7x to plot p(x):');
        figure('Name', 'Plot of of x^3-7x');
        p = [0 -7 0 1];
        x = [-4:0.01:4];
        plot(x,vect_peval(p,x));
        grid on
    end
    
    %%
    %Taylor poly test: computes T4 of a given polynomial
    function taylor_test_1()
        f = @(x) 2 + 3*x.^2 + 5*x.^3 + 7*x.^4;
        T4 = taylor_poly(f,4);
        disp('Testing taylor_poly(), test1:');
        disp(f)
        disp('T4 of f should be [2 0 3 5 7]:');
        disp(T4);
        disp('');
    end
    
    %%
    %Taylor test 2: fill in the blank with what T5 should be; does your code
    %give the right value?
    function taylor_test_2()
        f = @(x) sin(x);
        T5 = taylor_poly(f,5);
        disp('Testing taylor_poly(), test 2:');
        disp('T5 of sin(x) should be [0 1 0 -3 0 5]');
        disp(T5);
        disp('');
    end
    
    %%
    %Taylor test 3: same as test 2, but compute T5 for log(1+x)
    function taylor_test_3()
        f = @(x) log(1+x);
        T5 = taylor_poly(f,5);
        disp('Testing taylor_poly(), test 3:');
        disp('T5 of log(1+x) should be ****SOMETHING***');
        disp(T5);
        disp('');
    end
    
    %%
    %Taylor test 4: same as test 2, but compute T5 for sqrt(x)
    function taylor_test_4()
        f = @(x) sqrt(x);
        T5 = taylor_poly(f,5);
        disp('Testing taylor_poly(), test 4:');
        disp('T5 of sqrt(x) should be ****SOMETHING***');
        disp(T5);
        disp('');
    end
    
    %%
    %Plot comparison test: compares sin(x) to its T3
    function plot_compare_test_1()
        figure('Name','Taylor polynomial T3 approximating sin(x)');
        f = @(x) sin(x);
        plot_compare(f, -pi, pi, 3);
    end
    
    %%
    %Plot comparison test: compares sin^2(x) to its T2, T3, T4, T5, T6, T7
    function plot_compare_test_2()
        figure('Name','Taylor polynomials approaching the function');
        %>YOUR CODE HERE
    end
    
    %This test introduces cell arrays (to store function handles) and
    %subplot (to plot many plots on one page).
    function taylor_plot_bonanza()
        figure('Name','Taylor polynomial bonanza');
        func_array = {{@(x) sin(x), @(x) cos(x), @(x)tan(x*0.4)};
            {@(x) log(x+3.5), @(x) exp(x), @(x) 1./(x+3.5)};
            {@(x) x.^2, @(x) x.^3  - 7*x, @(x) sqrt(pi^2-x.^2)}};
        pos = 1;
        for i=1:3
            for j=1:3
                subplot(3,3, pos);
                plot_compare(func_array{i}{j}, -pi, pi, 3);
                pos = pos + 1;
            end
        end
    end

    end %end of methods
end %end of classdef    

