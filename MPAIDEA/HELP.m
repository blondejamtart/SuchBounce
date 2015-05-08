% Hi Bryan! 

% You can test MP-AIDEA by running test.m. It searches for the minimum of one
% of the CEC2005 test function (in the relative folder) using a maximum
% number of function evaluation that you can define as input (line 39 in
% test.m). 

% At the end of the run of MP-AIDEA the two main variables of interest that
% you will find in the workspace will be:

% 1. minima
%    It is a 14*(D+1) matrix, where D is the dimension of the problem (you
%    can define the dimension of the problem at line 18 in test.m).
%    The best result obtained at 14 values of function evaluations (going from
%    0.01 to 1 time the maximum number of function evaluation) are saved. 

% 2. all
%    It is a matrix in which all the individuals of all the populations and all
%    the local minima are saved. They are sorted, so the best values are at the
%    top. 


% To use it for your problem you need to change:

% line 18, dimension of the problem
% lines 21 and 22, lower and upper boundaries for your problem
% line 105, the name of the function to minimize