clear;
clc;
close all; 

b=[-2 1 5]; %represent the coeff in order, -2s^2+1s+5
a=[1 2 5];

w=-15:0.01:15;

[Hc,w] = freqs(b,a,w);
%Hc stores resulting compl. freq responce

magnitude= abs(Hc);

phase= angle(Hc); 

figure;
plot(w, magnitude, 'LineWidth', 2);
grid on;
xlabel('Frequency (rad/min)');
ylabel('Magnitude |H(jw)|');
title('Magnitude Response');

figure;
plot(w, phase, 'LineWidth', 2);
grid on;
xlim([-15 15]);
xlabel('Frequency (rad/min)');
ylabel('Phase (radians)');
title('Phase Response');
