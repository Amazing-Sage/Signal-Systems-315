%using the equation: y[n] -y[n-1]+0.5y[n-2]= -2x[n]+3x[n-1]
b=[-2,3]; % x terms on right_shift
a=[1,-1,0.5]; %y terms left side 

N=21; 
n=0:N-1; 
x=zeros(1,N); 
x(1)= 1; 

h=filter(b, a ,x); 

stem(n,h); 
xlabel('n(samples)'); 
ylabel('h[n]');
title('Impulse responce h[n]'); 
grid on; 
