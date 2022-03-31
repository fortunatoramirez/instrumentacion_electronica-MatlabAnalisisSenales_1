close all
clear
clc

%% Señal sinusoidal de 440 Hz {La (A)}
fs = 8000;
f = 440;
t = 0:1/fs:0.5-1/fs;
x = sin(2*pi*f*t);

figure;
plot(t,x)
grid on

%% Silencio
Z = zeros(1,length(x));

%% Secuencia 1
secuencia_1 = [x Z x Z x Z x Z x Z x Z x];
sound(secuencia_1,fs);


%% Señales de diferentes frecuencias
g = 391.995;
G = sin(2*pi*g*t);
a = 440;
A = sin(2*pi*a*t);
b = 493.88;
B = sin(2*pi*b*t);
c = 523.251;
C = sin(2*pi*c*t);
d = 587.33;
D = sin(2*pi*d*t);
e = 659.26;
E = sin(2*pi*e*t);
f = 698.46;
F = sin(2*pi*f*t);

%% Secuancia 2
secuencia_2 = [G A B G G A B G B C D Z B C D Z D E D C B G D E D C B G Z A D G Z A D G];
sound(secuencia_2,fs)

