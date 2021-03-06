%% Machine Precision or Machine Epsilon

% The machine precision is defined as the smallest number such that when
% added to 1 results in a different number than 1.
% i.e. 1 + macheps ~= 1 but anything less than macheps = 1

clear all
close all

matlabeps = eps ;

%% Approach 1 - Using 'for', 'if', and 'break' commands
% We can compute macheps using a for loop with sufficient other commands to
% stop the process when macheps gets small enough.

% Initialise epsilon
epsA = 1 ;

for i = [1:100]
    epsA = epsA / 2 ; % Divide epsA in 2
    if 1 + epsA == 1 
        break
    end
end
% At this point we must remember that epsA is now too small and must be
% rescaled
epsA = 2*epsA ;
i = i-1 ; % And our i is
disp('Final value of i such that (1 + epsA) > 1:')
disp(i)
print('dtxt', epsA

%% Approach 2 - Using a 'while loop'
% We can also compute the macheps using a while loop resulting in a much
% cleaner code.

% Initialise epsilon
epsB = 1 ;

while 1 + epsB/2 ~= 1 
    epsB = epsB/2 ;
end
epsB

%% Approach 3 - The function f(i) required to reach eps
% We can clearly see that there is a function that depends on i (above)
% that will generate our macheps.
% The function is given by:
%   f(i) = 1/(2^i) 
% Where our i is the loop counter which results in (1+macheps)>1
% i = 52 from above.

epsC = 1/(2^52)

%% Logical Tests
% We can test all of the above using the following logical tests.

% Tests for Approach 1 
A1 = 1 + epsA ; % Should be different from 1
A2 = 1 + epsA/2 ;  % Should be the same as 1

A1 == 1 ; % Should return 0 
A2 == 1 ; % Should return 1 

% Tests for Approach 2
B1 = 1 + epsB ; % Should be different from 1
B2 = 1 + epsB/2 ; % Should be the same as 1

B1 == 1 ; % Should return 0 
B2 == 1 ; % Should return 1 

% Tests for Approach 3
C1 = 1 + epsC ; % Should be different from 1
C2 = 1 + epsC/2 ; % Should be the same as 1

C1 == 1 ; % Should return 0 
C2 == 1 ; % Should return 1 








