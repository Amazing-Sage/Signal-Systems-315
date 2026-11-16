clear; 
clc; 
clear; 

%f range 
omega=linspace(0,pi, 1000); 

%f responce 
H=(-2 +3*exp(-1j*omega))./ ...
    (1-exp(-1j*omega)+0.5*exp(-2j*omega)); 

Magnitude= abs(H);

%plot magnitude 
figure; 
plot(omega, Magnitude); 
grid on; 

xlabel('Angular frequency (Rad/sample)'); 
ylabel('Magnitude'); 
title('Magnitude of Frequency Responce'); 

%calculate phase 
Phase= angle(H); 

%plot phase 
figure; 
plot(omega, Phase); 
grid on; 

xlabel('Angular frequency (Rad/sample)'); 
ylabel('Phase (radians)'); 
title('Phase of Frequency Responce'); 

%3(c) on problem 3 homework 3 --------------------------------

clear; 
clc; 
clear; 

%transfer function coefficents 
b=[-2,3]; %numerator 
a=[1,-1,0.5]; %denomerator 

%calculate f responce 
[H,omega]=freqz(a,b,1000); 

%calculate magnitude 
Magnitude= abs(H); 
Phase= angle(H); 

%plot magnitude 
figure; 
plot(omega, Magnitude); 
grid on; 
xlabel('Angular frequency (Rad/sample)'); 
ylabel('Magnitude'); 
title('Magnitude of Frequency Responce'); 

%plot phase 
figure; 
plot(omega, Phase); 
grid on; 
xlabel('Angular frequency (Rad/sample)'); 
ylabel('Phase (radians)'); 
title('Phase of Frequency Responce'); 
