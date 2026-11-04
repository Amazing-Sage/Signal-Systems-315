close all;
clear;
clc;

%(a)------------------------------------------------------------------------
N_a = 63; % fundamental per
n_a = 0:2*N_a-1; 
x_a = (8/3)*sin(8*pi*n_a/63 + 3*pi/5); 

w_a= 2*pi/N_a; %fundamental angular frequency 
f_a= 1/N_a; %fundamental frequency

%plot full signals (2 periods)

figure; 
stem(n_a,x_a,'b','filled');
title('Part (a): x[n]= (8/3)*sin(8*pi*n_a/63 + 3*pi/5)');
xlabel('n(samples)'); 
ylabel('x[n]: peanut butter and jelly sandwiches');
grid on; 

%plot 1 period
n_a_one= 0:N_a-1; 
x_a_one= (8/3)*sin(8*pi*n_a_one/63 + 3*pi/5);
P_a= mean(abs(x_a_one).^2); %avg power

figure;
stem(n_a_one, x_a_one,'r', 'filled');
title('Part (a): One Period of x[n]');
xlabel('n (samples)');
ylabel('x[n] (peanut butter and jelly sandwiches)');
grid on;

% print results to command window
fprintf('Part (a):\n');
fprintf('Fundamental Period: N = %d samples\n', N_a);
fprintf('Fundamental Frequency: f = %.6f cycles/sample\n', f_a);
fprintf('Fundamental Angular Frequency: w = %.6f rad/sample\n', w_a);
fprintf('Average Power: P = %.4f (peanut butter and jelly sandwiches)^2\n', P_a);
