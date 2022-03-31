close all
clear 
clc

%% Leer la señal de audio
[x,fs] = audioread('speech_sample.wav');

%% Tomar un fragmento de la señal
% tt = 1;
% frag = 44100*tt;
% x = x(1:frag);

%% Graficar la señal
t = 0 : 1/fs : length(x)/fs - 1/fs;
figure;
plot(t,x);
% stem(t,x);
grid on

%% Reproducir la señal
sound(x,fs);

%% Reproducir la señal en un dispositivo específico
% audio_info = audiodevinfo; %Obtener el ID del dispositivo reproductor
% player = audioplayer(y, fs, 16, 8); %audioplayer(Señal, FrecuenciaDeMuestreo, BitsDeResolución, IDdelReproductor)
% play(player)