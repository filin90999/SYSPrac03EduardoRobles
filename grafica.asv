%%Problema 3
% # Construya una función que gráfique funciones de
% $f:R\rightarrow R^2$ en el formato de su elección y pruebe
% su código mostrando la gráfica de la transformada de Fourier $F(w)$ en
% $[-10,10]$ de la función $f(t)=e^{-2t}u(t)$, puede utilizar una función
% anonima para este fin, no debe incluir el código, solo el uso de la 
% función para mostrarla gráfica. Reporte la gráfica de $f(t)$ de 
% $[-1,5]$ (recuerde que ya tiene una función para esto). Reporte 
% del espectro de magnitud y del espectro de fase en $[-10,10]$ (puedes con
% sultar con help la descripción de _abs_, _angle_, _atan2_). Solo
% reporte las graficas.
%%Grafica de f(t)
t=-1:.001:5; 
z= (exp(-2.*t)*unitstep);
figure()
plot (t,z) 
grid on
%%Grafica de f(w)
function graficadora(x,y,z)
figure()
plot3(x,y,z)
grind on
xlabel ('dominio t')
ylabel('RE')
zlabel('Im')
end
z=2+t*i;
graficadora(t,rdivide(real(z), real(z).^2+img(z).^2), rdivide (-img(z), real(z).^2+img(z).^2))

%%Espectro de magnitud y fase
x=exp(-2.*t);
fs=20;
espectro=fft(x);%transformada rapida de fourier de x
espectro=espectro(1:end/2);
freq=linspace(0,fs/2,length(espectro));
espreal=real(espectro);
espimg=imag(espectro);
magnitud=abs(espectro);
fase=angle(espectro);
t=0:1/fs:(length(x)-1)/fs;
figure(2)
subplot(2,1,1);
plot(freq,magnitud);
title('Espectro de magnitud');
subplot(2,1,2);
plot(freq,fase);
title('Espectro de fase');