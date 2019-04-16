
%% Función de graficación
%
% Primeramente creamos nuestro vector que en este caso sera $\omega$ para definir
% el intervalo en el cual vamos a evaluar la función en este caso será de -2
% hasta 2 y el incremento será de 0.001
%
%   w=-2:0.001:2;
%
% Posteriormente metemos este argumento a la función y el segundo argumento
% sera la definición de nuestra función que en este caso es $F(\omega)=a/(a^2+\omega^2)$ vs
% con $a=1$ y se obtendrá la gráfica que resulte
F=@(w) 1./(1+w.^2);
transf2(w,F(w));
%% Función de energía
%
% Para esta función vamos a definir primeramente una variable simbólica
% Esta función devuelve la expresión analítica de la energía y su valor
% numérico. Para esto nuestra función requiere de tres parámetros, el
% primero es la función, el segundo es el límite inferior de la función y
% el segundo el límite superior de la misma.
% Nuestra función tiene la siguiente estructura
%   function E = energia(f,a,b)
%   display('Enegergía expresión analítica: ')
%   int((sqrt(f^2))^2)
%   display('Evaluando ')
%   E=int(f,[a b]);
%   end
% 
% Para probarla realizaremos el ejercicio 1.1.3 que nos pide lo siguiente
%
% Encontrar la energía del par de señales x(t) y y(t) descritas en las
% figuras. Bosqueja y encuentra las energías de las señales x(t)+y(t) y
% x(t)-y(t)
%
% Declaramos dos variables simbólicas
syms t
%%
%


