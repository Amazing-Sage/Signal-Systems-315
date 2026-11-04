close all;
clear;
clc;

%(a)----------------------------------------------------------------------------------------------------
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

%(b)----------------------------------------------------------------------------------------------------
n_b = 0:100; 
x_b= (8/3)*sin(8*pi*n_b/24 + 3*pi/5);

figure;
stem(n_b, x_b,'b', 'filled');
title('Part (b): x[n]= (8/3)*sin(8*pi*n_b/24 + 3*pi/5)');
xlabel('n (samples)');
ylabel('x[n] (peanut butter and jelly sandwiches)');
grid on;
%(c)----------------------------------------------------------------------------------------------------

N_c = 672; % fundamental per
n_c = 0:2*N_c-1; 
x_c = 4*exp(1j*(5*pi*n_c/336 - pi/6)); 

w_c= 2*pi/N_c; %fundamental angular frequency 
f_c= 1/N_c; %fundamental frequency

%plot 2 periods -----------------------------------
figure; 
subplot(4,1,1);
stem(n_c,abs(x_c),'b','filled');
title('Part (c): magnitude');
xlabel('n(samples)'); 
ylabel('x[n]');
grid on; 

subplot(4,1,2);
stem(n_c,angle(x_c),'b','filled');
title('Part (c): phase');
xlabel('n(samples)'); 
ylabel('Phase(rad)');
grid on; 

subplot(4,1,3);
stem(n_c,real(x_c),'b','filled');
title('Part (c): real part');
xlabel('n(samples)'); 
ylabel('Re(x[n])');
grid on; 

subplot(4,1,4);
stem(n_c,imag(x_c),'b','filled');
title('Part (c): imaginary part');
xlabel('n(samples)'); 
ylabel('Im(x[n])');
grid on; 

%plot 1 period-------------------------------------
n_c_one= 0:N_c-1; 
x_c_one= 4*exp(1j*(5*pi*n_c_one/336 - pi/6));
P_c= mean(abs(x_c_one).^2); %avg power

figure; 
subplot(4,1,1);
stem(n_c_one,abs(x_c_one),'r','filled');
title('Part (c): magnitude');
xlabel('n(samples)'); 
ylabel('x[n]');
grid on; 

subplot(4,1,2);
stem(n_c_one,angle(x_c_one),'r','filled');
title('Part (c): phase');
xlabel('n(samples)'); 
ylabel('Phase(rad)');
grid on; 

subplot(4,1,3);
stem(n_c_one,real(x_c_one),'r','filled');
title('Part (c): real part');
xlabel('n(samples)'); 
ylabel('Re(x[n])');
grid on; 

subplot(4,1,4);
stem(n_c_one,imag(x_c_one),'r','filled');
title('Part (c): imaginary part');
xlabel('n(samples)'); 
ylabel('Im(x[n])');
grid on; 

% print results to command window
fprintf('Part (c):\n');
fprintf('Fundamental Period: N = %d samples\n', N_c);
fprintf('Fundamental Frequency: f = %.6f cycles/sample\n', f_c);
fprintf('Fundamental Angular Frequency: w = %.6f rad/sample\n', w_c);
fprintf('Average Power: P = %.4f (peanut butter and jelly sandwiches)^2\n', P_c);

%(d)----------------------------------------------------------------------------------------------------
%non periodic 
n_d = 0:112; 
x_d= 3*exp(((-5*pi*n_d)/112) + (1j*(7*pi/100))*n_d);

figure; 
subplot(4,1,1);
stem(n_d,abs(x_d),'b','filled');
title('Part (d): magnitude, non-periodic');
xlabel('n(samples)'); 
ylabel('x[n]');
grid on; 

subplot(4,1,2);
stem(n_d,angle(x_d),'b','filled');
title('Part (d): phase, non-periodic');
xlabel('n(samples)'); 
ylabel('Phase(rad)');
grid on; 

subplot(4,1,3);
stem(n_d,real(x_d),'b','filled');
title('Part (d): real part, non-periodic');
xlabel('n(samples)'); 
ylabel('Re(x[n])');
grid on; 

subplot(4,1,4);
stem(n_d,imag(x_d),'b','filled');
title('Part (d): imaginary part, non-periodic');
xlabel('n(samples)'); 
ylabel('Im(x[n])');
grid on; 
