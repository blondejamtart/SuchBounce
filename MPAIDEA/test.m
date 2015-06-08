%% Test 

% Test function from the CEC 2005 competition
clear minima
global initial_flag
initial_flag = 0;
%addpath('CEC2005function')

func_num = 1;


%% Input

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Modify the following input
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Dimension of the problem
D = 3*100;

% Upper and lower boundaries for the test function
vub = 16e-3   * ones(1,D);
vlb = -4e-3  * ones(1,D);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



XVmaxl = 10e-3*ones(1,D);%vub;
XVminl = 0*ones(1,D); %vlb;

% Number of individuals in each population - You can change this but 30 is
% a good starting point
NP = 30;

% Number of population - The number of populations can be changed
pop_number = 4;

% Maximum number of function evaluation - The maximum number of function
% evaluations can be changed
nFeValMax = 50 * D;





%% Options for MP-AIDEA

% Initialize options
options = zeros(1,40);

% Number of individuals
options(4) = NP;

% Distance for global restart - 
options(12) = 0.1;

% Verbosity of the output
options(15) = 0;

% contraction threshold - 
options(27) = 0.2;

% Probability of using DE strategy rand or CurrToBest - 
options(34) = 0.5;

% dd limit - 
options(35) = 3;

% Plot for local minima and best members plot  
options(37) = 0;

% Maximum number of function evaluations
options(38) = nFeValMax;

% DE strategy 
options(40) =  1;



%% MP-AIDEA

% =================================================================
% Creation of the populations

% Initialize populations
population = zeros(NP,D,pop_number);

for s = 1 : pop_number
    % Create population using latin hypercube sampling
    pop = lhsdesign(NP,D,'criterion','maximin').*repmat(XVmaxl-XVminl,NP,1)+repmat(XVminl,NP,1);
    population(:,:,s) = pop;
end
% =================================================================




% =================================================================
% MP-AIDEA 
% =================================================================

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% In the following line substitute benchmark_func with the function that you want to
% optimize
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[memories,all] = MP_AIDEA_SINGLE_AdaptBubble_NEW(@(x)system_energy(x,D/3),population(:,:,1:pop_number),vlb,vub,options);




% Here, if I am not wrong, it search for the minimum of your objective
% function over the results of all the populations and save them in a
% variable called minima
for k = 1 : size(memories,1)
    for kk = 1 : pop_number
        [minimum,where] = min(memories(k,D+1,:));
        minima(k,1:D+1) = [0.1*ones(1,D) 1e-20].*memories(k,1:D+1,where);
    end
end






