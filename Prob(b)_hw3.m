clear;
clc;
close all; 

w=-15:0.01:15;

H=((2*w.^2+5)+ 1i*w)./((5-w.^2)+1i*2*w);

magnitude= abs(H);

phase= angle(H); 

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
