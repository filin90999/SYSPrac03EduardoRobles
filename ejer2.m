
%% Funci�n de graficaci�n
%
% Primeramente creamos nuestro vector que en este caso sera $\omega$ para definir
% el intervalo en el cual vamos a evaluar la funci�n en este caso ser� de -2
% hasta 2 y el incremento ser� de 0.001
%
%   w=-2:0.001:2;
%
% Posteriormente metemos este argumento a la funci�n y el segundo argumento
% sera la definici�n de nuestra funci�n que en este caso es $F(\omega)=a/(a^2+\omega^2)$ vs
% con $a=1$ y se obtendr� la gr�fica que resulte
F=@(w) 1./(1+w.^2);
transf2(w,F(w));
%% Funci�n de energ�a
%
% Para esta funci�n vamos a definir primeramente una variable simb�lica
% Esta funci�n devuelve la expresi�n anal�tica de la energ�a y su valor
% num�rico. Para esto nuestra funci�n requiere de tres par�metros, el
% primero es la funci�n, el segundo es el l�mite inferior de la funci�n y
% el segundo el l�mite superior de la misma.
% Nuestra funci�n tiene la siguiente estructura
%   function E = energia(f,a,b)
%   display('Enegerg�a expresi�n anal�tica: ')
%   int((sqrt(f^2))^2)
%   display('Evaluando ')
%   E=int(f,[a b]);
%   end
% 
% Para probarla realizaremos el ejercicio 1.1.3 que nos pide lo siguiente
%
% Encontrar la energ�a del par de se�ales x(t) y y(t) descritas en las
% figuras. Bosqueja y encuentra las energ�as de las se�ales x(t)+y(t) y
% x(t)-y(t)
%
% Declaramos dos variables simb�licas
syms t
%%
%


