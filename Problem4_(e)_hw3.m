clear; 
clc;
close all; 

%create time values
%creates vector starting at 0.01 and ends at 8 to plot function
t=0:0.01:8; %do this because it looks smoother with 0.01

%initialize output
y=zeros(size(t)); 

%first region-----------------------
i=t>3 & t<4; 

y(i)= -(t(i)-3).*(2*t(i).^2-27*t(i)+75)/6; 
%t,^2 sqr every value invididualy and t.*2 multiplied ever indiv val

%second region-----------------------
i=t>=4 & t<5; 

y(i)= (6*t(i).^3 - 99*t(i).^2 + 522*t(i) - 887)/6; 

%third region-----------------------
i=t>=5 & t<6; 

y(i)=-1/3; 

%fourth region-----------------------
i = t >= 6 & t < 7;

y(i) = (-2*t(i).^3 + 33*t(i).^2 - 174*t(i) + 287)/3;

% disp([min(y), max(y)]);

% disp(sum(t>3 & t<4));
% disp(sum(t>=4 & t<5));
% disp(sum(t>=5 & t<6));
% disp(sum(t>=6 & t<7));

fprintf('Minimum: %.4f\n', min(y));
fprintf('Maximum: %.4f\n', max(y));
fprintf('At t=6.5: %.4f\n', y(t==6.5));

plot(t,y,'LineWidth',2); 
grid on; 
ylim([-0.5 0.25]);
xlabel('Time(t)');
ylabel('y(t)'); 
title('convolution y(t) = x(t)* h(t)'); 
