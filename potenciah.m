%% PROBLEMA 7 
% Escriba una funci�n que se llame potencia que reciba como argumento una funci�n (anonima o simbolica) 
% y que regrese el calculo de la potencia
% Se presupone utilizar el c�digo solo con funciones de potencia
% Muestre el c�digo sin ejecutar
%%  function  P = potencia(f,T)
  potencia de una expresion analitica
   evaluando
   P=(1/T) * integral(f,-T/2, T/2);
  
 
%%
% Resuelva el problema 1.1.4
% Encuentre la potencia de la se�al peri�dica x (t^3).
% Encuentra tambi�n las potencias y los valores rms de:

% figura

t4=-100:0.1:100;
plot(t4,t4.^3,'LineWidth',2)
grid on
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.Box = 'off';
title('Gr�fica de la se�al f(t)=t^3 ')
%%
 % # -x(t)
 f=(@(t) ((abs(-(t^3))).^2))
 potencia(f,2)
 % valor de rms
 rms=sqrt(ans)
 %%
 % # -2x(t)
f=(@(t) ((abs(2.*(t^3))).^2))
 potencia(f,2) 
% valor de rms
 rms=sqrt(ans)

%%
% # cx(t)
 f=(@(t) ((abs(c.*(t^3))).^2))
potencia(f,2) 
% valor de rms
rms=sqrt(ans)
