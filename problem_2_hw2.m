% MATLAB Script
% Press Ctrl+Enter to run

%plot signals and backward diffrences 
%backward diffrence is y[n]=x[n]-x[n-1] 

%use stem() function because these are discrete

%part a-----------------------------------------------------------------------------------------
clear; 
clc; 
close all; 

%define time range in discrete 
%because n is -4<=t<=4 we use -5 and 5
n=-5:5; 

%logical index for range 
inside= (n >= -4) & (n <=4);
%define x1[n] 
x1=zeros(size(n)); 
x1(inside) = 16 - n(inside).^2;

%define x2[n] 
x2=2*ones(size(n)); 
x2(inside) = 18 - n(inside).^2;

%calculate backward diffrence 
y1= x1-[0,x1(1:end-1)];

% x2 is equal to 2 outside its specified range 
y2= x2-[2,x2(1:end-1)];

%plot signals 
figure; 

subplot(2,2,1); 
stem(n,x1,'filled');
title('x_1[n]');
xlabel('n');
ylabel('amplitude');
grid on; 

subplot(2,2,2); 
stem(n,x2,'filled');
title('x_2[n]');
xlabel('n');
ylabel('amplitude');
grid on; 

subplot(2,2,3); 
stem(n,y1,'filled');
title('y_1[n]=x_1[n]-x_1[n-1]');
xlabel('n');
ylabel('amplitude');
grid on; 

subplot(2,2,4); 
stem(n,y2,'filled');
title('y_2[n]=x_2[n]-x_2[n-1]');
xlabel('n');
ylabel('amplitude');
grid on;

%part b-----------------------------------------------------------------------------------------
%define x3[n] 
x3=zeros(size(n)); 
x3(inside) = 18 - n(inside).^2;
y3= x3-[0,x3(1:end-1)];

%plot 
figure; 
subplot(2,1,1); 
stem(n,x3,'filled');
title('x_3[n]');
xlabel('n');
ylabel('amplitude');
grid on; 

subplot(2,1,2); 
stem(n,y3,'filled');
title('y_3[n]=x_3[n]-x_3[n-1]');
xlabel('n');
ylabel('amplitude');
grid on; 

%part c-----------------------------------------------------------------------------------------
%calculate accumulation of y2[n] 
x_acc=cumsum(y2); %cumulative sum 

%plot 
figure; 

stem(n,x_acc,'filled');
title('Accumlation of y_2[n]');
xlabel('n');
ylabel('Amplitude');
grid on;
