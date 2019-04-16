%% Practica 3 Se�ales en Tiempo Continuo
%
% Grupo: 2TV1
%
% Materia: Se�ales y Sistemas
%
% Alumnos:
% 
% _Panama Segura Sayuri_
%
% _Perez Escobar Hiram Etzael_
%
% _Robles Filio Eduardo_ 
%
% _Rodriguez Moreno Luis Manuel_
%
% Profesor: Dr. Rafael Mart�nez Mart�nez
%
%
%% Introducci�n
%
% *MatLab*
%
% MATLAB (Matrix Laboratory, �laboratorio de matrices�). Es un software
% matem�tico con entorno de desarrollo integrado (IDE) el cual contiene un
% lenguaje de programaci�n propio (Lenguaje M) y es multiplataforma (Unix,
% Windows y Apple Mac Os X).
% MATLAB es un software de gran uso en Centros de Investigaci�n y
% Desarrollo as� como en universidades.
% En 1984 surge la primera versi�n, creado por Cleve Moler, con la idea de
% usar paquetes de subrutinas escritas en Fortran en los cursos de An�lisis
% Num�rico y �lgebra Lineal, sin tener una necesidad de programas que
% usaran este lenguaje.
%
% El lenguaje de programaci�n M se cre� en 1970 proporcionando un acceso
% sencillo al software de matrices LINPACK y EISPACK sin tener que hacer
% uso del lenguaje Fortran.
% Ya en 2004 se apreciaba que MATLAB era usado por aproximadamente m�s de
% un mill�n de personas, tanto acad�micos como empresarios. 
% Dentro de sus principales funciones se encuentran:
%
% # Manipulaci�n de Matrices.
% # La representaci�n de datos y funciones.
% # Implementaci�n de algoritmos.
% # Creaci�n de interfaces de usuario (GUI).
% # Comunicaci�n con programas en otros lenguajes y con otros dispositivos Hardware.
% 
% Para mayor inter�s puede consultar el siguiente enlace.
% 
% <http://www.dm.unibo.it/~piccolom/didattica/num_met/SAmatlab_09.pdf>
%%
% *Octave*
%
% Octave es un lenguaje de alto nivel para realizar c�lculos num�ricos en
% el ordenador, y tambi�n es un programa capaz de interpretar este lenguaje
% y realizar los c�lculos. Octave ofrece una interfaz de usuario
% interactiva, orientada a l�nea de comandos, pero tambi�n puede ser
% utilizado en modo no interactivo, leyendo sus �rdenes de fichero.
% Octave originalmente fue desarrollado para facilitar la tarea a los
% estudiantes de Ingenier�a Qu�mica de la universidad de Texas, sin que
% estos tuvieran que enfrentarse a las dificultades de la programaci�n.
% 
% Su flexibilidad en seguida lo hizo popular y su uso se expandi� a otros
% problemas relacionados con el �lgebra lineal y las ecuaciones
% diferenciales y favoreci� su desarrollo, agregando las aportaciones de la
% comunidad de usuarios.
% Otros programas de caracter�sticas similares, y hasta cierto punto
% compatibles, son son el lenguaje R de la FSF, Matlab y Scilab. Estos dos
% �ltimos propietarios. Octave es software libre (bajo licencia GNU), lo
% que significa que se puede usar y redistribuir libremente, y que
% cualquiera puede ayudar para mejorarlo. Octave est� disponible en
% Internet en http://www.octave.org.
%
% Para mayor inter�s puede consultar el siguiente enlace.
% 
% <https://cimec.org.ar/foswiki/pub/Main/Cimec/MetodosNumericosYSimulacion/metnums.pdf>
%%
% *Python*
%
% Python es un lenguaje de programaci�n el cual fue creado por el holand�s
% Guido van Rossum en los a�os 90. Su nombre esta inspirado en el grupo
% humorista brit�nico Monty Python.
% Este lenguaje es caracterizado por su simplicidad y r�pido aprendizaje.
% Si queremos hacer el cl�sico hola mundo en este lenguaje, nos basta con
% escribir print �hola mundo�.
% Las caracter�sticas principales de este lenguaje son cuatro:
%
% # Tipado din�mico, no es necesario indicar el tipo de variable al momento
% de declararlo ya que lo identifica automaticamente.
% # Fuertemente tipado, no se permite tratar de manera implicita a una
% variable como si fuera de otro tipo.
% # Multiplataforma,  se refiere a que no depende de un sistema operativo
% en especifico para funcionar bien.
% # Multiparadigma, python es un lenguaje orientado a diversos paradigmas
% entre ellos tiene la programacion orientada a objetos, programaci�n
% estructurada, programaci�n funcional y programaci�n orientada a aspectos.
%
% Para mayor inter�s puede consultar el siguiente enlace.(Seleccione el boton verde _READ_ de el enlace)
% 
% < https://legacy.gitbook.com/book/swaroopch/byte-of-python/details >
%%
% *Objetivos*
% 
% # Manipulaci�n b�sica de MATLAB
% # Gr�ficas de se�ales reales y complejas continuas
% # Transformaci�n de se�ales continuas (escalamientos y traslaciones)
% # Calculo de energ�a y potencia de se�ales continuas
% 
%% Ejercicio 1
% Crea una funci�n que se llame _fun1_ y reciba dos parametros $\omega$ y 
% $a$ la funci�n debe regresar la evaluaci�n $F(\omega)=a/(a^2+\omega^2)$,
% esta funci�n debe trabajar con $a\in R$ y $w\in  R^n$. Debe
% mostrar su c�digo en el reporte (sin ejecutar).
%
%   function [f] = fun1(w,a)
%
%       if imag(a)~=0
%
%           disp('error')
%
%       else
%
%           f=a./(a.^2+w.^2)
%
%       end
%
%   end
%% Ejercicio 2
% Construya una funci�n que gr�fique funciones de $f:R\rightarrow R$ en el
% formato de su elecci�n y pruebe su c�digo mostrando la gr�fica de
% $F(\omega)$ vs $\omega$ en el intervalo $[-2,2]$ para $a=1$, no debe
% incluir el c�digo, solo el uso de la funci�n para mostrar la gr�fica.
% 
% *Funci�n de graficaci�n*
%
% Primeramente creamos nuestro vector que en este caso sera $\omega$ para definir
% el intervalo en el cual vamos a evaluar la funci�n en este caso ser� de -2
% hasta 2 y el incremento ser� de 0.001
% 
w=-2:0.001:2;
%%
% Posteriormente metemos este argumento a la funci�n y el segundo argumento
% sera la definici�n de nuestra funci�n que en este caso es $F(\omega)=a/(a^2+\omega^2)$ vs
% con $a=1$ y se obtendr� la gr�fica que resulte
F=@(w) 1./(1+w.^2);
transf2(w,F(w));
%% Ejercicio 3
% Construya una funci�n que gr�fique funciones de $f:R\rightarrow R^2$ en
% el formato de su elecci�n y pruebe su c�digo mostrando la gr�fica de la
% transformada de Fourier $F(w)$ en $[-10,10]$ de la funci�n
% $f(t)=e^{-2t}u(t)$, puede utilizar una funci�n anonima para este fin, no
% debe incluir el c�digo, solo el uso de la funci�n para mostrar la gr�fica.
% Reporte la gr�fica de $f(t)$ de $[-1,5]$ (recuerde que ya tiene una
% funci�n para esto). Reporte del espectro de magnitud y del espectro de
% fase en $[-10,10]$ (puedes con sultar con help la descripci�n de abs,
% angle, atan2). Solo reporte las graficas.
%%
% *Grafica de f(t)*
t=(-1:.001:5); 
z=@(t) exp(-2.*t).*(t>=0);
plot (t,z(t))
grid on;
%%
% *Grafica de f(w)*

z=2+t*1i;
graficadora(t,rdivide(real(z), real(z).^2+imag(z).^2), rdivide (-imag(z), real(z).^2+imag(z).^2))

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

%% Ejercicio 4
% 
% *M1.1  Funciones An�nimas*
% 
% Muchas funciones simples se representan m�s convenientemente mediante el 
% uso de funciones an�nimas en MATLAB. Una funci�n an�nima proporciona una 
% representaci�n simb�lica de una funci�n definida en t�rminos de operadores 
% y funciones de MATLAB. Por ejemplo, considere definir la siguiente se�al:
% $f(t)=e^{-t}cos(2 \pi t)$
f = @(t) exp(-t).*cos(2*pi*t);
%%
% El primer argumento de la funci�n an�nima identidfica la variable o las
% variables de las cual depende dicha funci�n.
% Una vez definida $f(t)$ puede evaluarse simplemente pasando los valores
% de entrada de inter�s. Por ejemplo:
t = 0;
f(t)
%%
% El mismo resultado se obtiene al pasar $t=0$ directamente.
f(0)
%%
% Las entradas vectoriales permiten la evaluaci�n de m�ltiples valores
% simult�neamente. Considere la tarea de trazar $f(t)$ sobre el intervalo
% $(-2 \leq t \leq2)$. El comportamiento general de la funci�n es claro: $f(t)$
% debe oscilar cuatro veces con una envoltura en descomposici�n.
% Dado que los bocetos manuales precisos son engorrosos, las gr�ficas
% generadas por MATLAB son una alternativa atractiva.
%
% Supongamos que el vector t se elige para incluir solo los n�meros enteros
% contenidos en $(-2 \leq t \leq2)$, a saber, $[-2, -1, 0, 1, 2]$.
t = (-2:2)
%%
% Esta entrada vectorial se eval�a para formar una salida vectorial.
f(t)
%%
% El comando plot representa el resultado gr�fico que es el siguiente.
figure
plot(t,f(t));
xlabel('t');
ylabel('f(t)');
grid on;
%%
% Las l�neas de la cuadr�cula, agregadas mediante el comando " grid ",
% ayudan a la identificaci�n de la funci�n. Desafortunadamente, la gr�fica
% no ilustra el comportamiento oscilatorio esperado. Se requieren m�s
% puntos para representar adecuadamente f (t).
%
% Entonces la pregunta es, �cu�ntos puntos son suficientes?. Si se
% eligen pocos puntos, la informaci�n se pierde. Si se eligen demasiados
% puntos, la memoria y el tiempo se pierden. Se necesita un equilibrio. Para
% las funciones oscilatorias, el trazado de 20 a 200 puntos por oscilaci�n
% suele ser adecuado. Para el presente caso, se elige t para dar 100 puntos
% por oscilaci�n.
t=linspace(-2,2,400);
%%
% De nuevo, la funci�n es evaluada y trazada.
figure
plot(t,f(t));
xlabel('t');
ylabel('f(t)');
grid on;
%%
% 
% *M1.2 Operadores relacionales y la funci�n de paso de unidad*
% 
% La funci�n escal�n unitario $u(t)$ surge naturalmente en muchas
% situaciones pr�cticas. Por ejemplo, un escal�n unitario puede modelar el
% acto de encender un sistema. Con la ayuda de operadores relacionales,
% las funciones an�nimas pueden representar los escalones unitarios.
% 
% En MATLAB, un operador relacional compara dos elementos. Si la
% comparaci�n es verdadera, se devuelve un verdadero l�gico (1). Si la
% comparaci�n es falsa, se devuelve un falso l�gico (0). Algunas veces
% llamadas funciones de indicador, los operadores relacionales indican si
% una condici�n es verdadera. Seis operadores relacionales est�n
% disponibles: $<$ , $>$ , $\leq$ , $\geq$ , $==$ y $\sim =$ .
%%
% La funci�n escal�n unitario se define f�cilmente utilizando el operador
% relacional $\geq$ .
u = @(t) t>=0;
%%
% Cualquier funci�n con una discontinuidad de salto, como el escal�n
% unitario, es dif�cil de trazar. Considere trazar $u(t)$ en el intervalo
% $(-2 \leq t \leq2)$. 
t = (-2:0.001:2);
figure
plot (t,u(t));
xlabel('t');
ylabel('u(t)');
grid on;
%%
% Dos problemas significativos son evidentes en la gr�fica resultante. En
% primer lugar, MATLAB escala autom�ticamente los ejes del trazado para
% delimitar estrechamente los datos. En este caso, esta caracter�stica
% normalmente oculta la mayor parte de la gr�fica. En segundo lugar, MATLAB
% conecta los datos del trazado con las l�neas, lo que dificulta la
% visualizacion de una discontinuidad de salto real. La cantidad de
% elementos que contiene el vector t hace que se muestre una l�nea de
% pendiente err�nea entre $(-1 \leq t \leq0)$.  
% Estas situaciones las podemos corregir de la siguiente manera.
t = (-2:0.01:2);    %Agregamos mas elementos a vector t
plot (t,u(t));      
xlabel('t');        
ylabel('u(t)');     
xlim([-2 2]);       %Especificamos los limites de
ylim([-0.5 1.5]);   %visualizacion de los ejes X y Y
grid on;
%%
% Los operadores relacionales se pueden combinar utilizando AND l�gico
% $\&$, OR l�gico $|$ y negaci�n l�gica $\sim$.  
% 
% Por ejemplo, $(t>0)\&(t<1)$ y $\sim((t \leq 0) | (t \geq 1))$ ambas
% pruebas si $(0 \leq t \leq1)$ Para demostrar, considere definir y trazar
% el pulso unitario $p(t)=u(t)-u(t-1)$
p = @(t) (t>=0 & t<1);
t = (-1:0.01:2);
plot(t,p(t));
xlabel('t');
ylabel('p(t) = u(t) - u(t-1)');
grid on;
xlim([-1 2]);
ylim([-0.5 1.5]);
%%
% Para los operandos escalares, MATLAB tambi�n admite dos construcciones
% l�gicas de cortocircuito. Un AND l�gico de cortocircuito se realiza
% utilizando $\&\&$, y un OR l�gico de cortocircuito se realiza utilizando
% $\|$. Los operadores l�gicos de cortocircuito son a menudo m�s eficientes
% que los operadores l�gicos tradicionales porque prueban la segunda parte
% de la expresi�n solo cuando es necesario. Es decir, cuando la expresi�n
% escalar A se encuentra falsa en $(A \&\& B)$, la expresi�n escalar $B$ no
% se eval�a, ya que un resultado falso ya est� garantizado. De manera
% similar, la expresi�n escalar $B$ no se eval�a cuando la expresi�n
% escalar A se encuentra verdadera en $(A \| B)$, ya que un resultado
% verdadero ya est� garantizado.
%%
% 
% *M1.3 Visualizando Operaciones en la Variable Independiente*
% 
% Com�nmente se realizan dos operaciones en la variable independiente de
% una funci�n: traslacion y escalamiento. Las funciones an�nimas son
% adecuadas para investigar ambas operaciones.
%
% Considere la funci�n $g(t)= f(t)u(t) = e^{-t}cos(2 \pi t)u(t)$ ya que en
% MATLAB no es posible multiplicar funciones an�nimas se necesita definir
% expl�citamente a $g(t)$
g = @(t) exp(-t).*cos(2*pi*t).*(t>=0);
%%
% Una operacion de traslacion y escalamiento se representa por $g(at+b)$,
% donde a y b son constantes reales arbitrarias. Como ejemplo, considere la
% posibilidad de trazar $g(2t+1)$ sobre el intervalo $(-2 \leq t \leq2)$
t = (-2:0.01:2);
g1 = g(2*t+1);
plot(t,g1);
xlabel('t');
ylabel('g(2t+1)');
grid on;
xlim([-2 2]);
ylim([-1 1.5]);
%%
% Con $a=2$ la funcion se comprime por un factor de 2, lo que da como
% resultado dos veces las oscilaciones por unidad t. A�adiendo la condici�n
% $b>0$, la forma de onda se desplaza hacia la izquierda.    
% 
% A continuaci�n, considere la posibilidad de trazar $g(-t+1)$ sobre el
% intervalo $(-2 \leq t \leq2)$. Con $a<0$ , la forma de onda se
% reflejar�, al agregar la traslacion con $b>0$, la forma de onda final se
% desplaza a la derecha.
g2 = g(-t+1);
plot(t,g2);
xlabel('t');
ylabel('g(-t+1)');
grid on;
xlim([-2 2]);
ylim([-1 1.5]);
%% 
% Como se puede apreciar los ejemplos anteriores son relativamente
% sencillos, por lo que ahora consideraremos trazar la siguiente funcion
% $h(t)=g(2t+1)+g(-t+1)$ esto sobre el intervalo $(-2 \leq t \leq2)$
g1 = g(2*t+1);
g2 = g(-t+1);
h = g1+g2;
plot(t,h);
xlabel('t');
ylabel('h(t) = g(2t+1) + g(-t+1)');
grid on;
xlim([-2 2]);
ylim([-1 1.5]);
%% 
% Observe que un bosquejo a mano de la funcion $h(t)$ posee cierto grado de
% dificultad, pero en MATLAB con funciones an�nimas ha sido bastante
% sencillo.
%%
% 
% *M1.4 Integraci�n num�rica y estimaci�n de la energ�a de la se�al.*
% 
% A menudo muchas se�ales interesantes tienen representaciones matem�ticas no
% triviales. Calcular la energ�a de la se�al, que implica integrar la norma
% al cuadrado de dichas se�ales, puede ser una tarea desalentadora.
% Afortunadamente, muchas integrales dif�ciles se pueden estimar con
% precisi�n mediante t�cnicas de integraci�n num�rica. Incluso si la
% integraci�n parece simple, la integraci�n num�rica proporciona una buena
% manera de verificar los resultados anal�ticos.
% 
% Para comenzar, considere la siguiente se�al simple.
% 
% $x(t)=e^{-t}[u(t)-u(t-1)]$ .
% 
% La energ�a de $x(t)$ se representa como.
% 
% $Ex=\int_{-\infty}^{\infty}\|x(t)\|^{2}\,dt  =  \int_{0}^{1}e^{-2t}\,dt
% =  Ex=0.5(1-e^{-2}) \approx 0.4323$
% 
% La integral de energ�a tambi�n
% puede ser evaluada num�ricamente. Consideraremos realizar un m�todo
% simple de aproximaci�n rectangular, eval�e el integrando en puntos
% uniformemente separados por $\bigtriangleup t$, multipliqe cada uno por
% $\bigtriangleup t$ para caluclar as �reas del rect�ngulo y luego
% sumetodos los rect�ngulos.
%
% Primero, creamos la funci�n x (t).
x = @(t) exp(-t).*(t>=0 & t<1);
%%
% Al dejar $\bigtriangleup t=0.01$, se crea un vector de tiempo adecuado.
t = (0:0.01:1);
%%
% El resultado final se calcula utilizando el comando suma.
Ex = sum(x(t).*x(t)*0.01)
%%
% El resultado no es perfecto, pero al 1% de error relativo est� cerca. Al
% reducir $\bigtriangleup t$ , se mejora la aproximaci�n. Por ejemplo,
% $\bigtriangleup t=0.001$ produce.
t = (0:0.001:1);
Ex = sum(x(t).*x(t)*0.001)
%%
% 0.1% de error relativo.
%
% Aunque es f�cil de visualizar, la aproximaci�n rectangular no es la mejor
% t�cnica de integraci�n num�rica. La funci�n MATLAB quad implementa una
% mejor t�cnica de integraci�n num�rica llamada cuadratura de Simpson
% adaptativa recursiva. Para operar, quad requiere una funci�n que describa
% el integrando, el l�mite inferior de integraci�n y el l�mite superior de
% integraci�n. Tenga en cuenta que no es necesario especificar ?t.
% Para usar quad para estimar Ex, primero se debe describir el integrando.
x_2 = @(t) exp(-2*t).*(t>=0 & t<1);   % x(t) elevada al cuadrado
%%
% La estimaci�n de Ex sigue inmediatamente.
Ex = quad(x_2,0,1)  %Por alguna razon esta funci�n esta siendo removida de MATLAB conforme se v� actualizando
%%
% Se pueden usar las mismas t�cnicas para estimar la energ�a de se�ales m�s
% complejas. Considere $g(t)$ definida previamente. La energ�a se expresa
% como.
% 
% $Ex=\int_{0}^{\infty}e^{-2t}cos^{2}(2 \pi t)u(t)\,dt$
% 
% Existe una soluci�n de forma cerrada, pero requiere un poco de esfuerzo.
% MATLAB proporciona una respuesta m�s r�pida.
g_2 = @(t) exp(-2*t).*(cos(2*pi*t).^2).*(t>=0);
%%
% Aunque el l�mite superior de integraci�n es infinito, la envoltura en
% descomposici�n exponencial garantiza que $g(t)$ sea efectivamente cero
% mucho antes de $t=100$. Por lo tanto, se usa un l�mite superior de
% $t=100$ junto con %\bigtriangleup t=0.001%. 
t = (0:0.001:100);
Eg = sum(g_2(t)*0.001)
%%
% Se obtiene una aproximaci�n ligeramente mejor con la funci�n quad.
Eg = quad(g_2,0,100)
%% Ejercicio 5
% 
% Resuelve el problema 1.2.2 del libro Linear Systems and Signals - B. P.
% Lathi usando las herramientas del paso anterior.
%
% *Problema 1.2.2*
% 
% Para la se�al $x(t)=-t[u(t+4)-u(t)] + t[u(t)-u(t-2)]$ realice las
% graficas 
% 
% a) $x(t-4)$
% 
% b) $x(t/1.5)$
% 
% c) $x(-t)$
% 
% d) $x(2t-4)$
% 
% e) $x(2-t)$
%% 
x = @(t) -t.*(t>=-4 & t<0) + t.*(t>=0 & t<=2);
t=[-10:0.001:10];
y=x(t);
plot(t,y);
xlim([-10 10]);
ylim([-1 5]);
grid on;
title("Problema 1.2.2 Lathi")
xlabel('t');
ylabel('x(t)=-t[u(t+4)-u(t)]+t[u(t)-u(t-2)');
%%
a=x(t-4);
plot(t,a);
xlim([-10 10]);
ylim([-1 5]);
grid on;
title("Inciso a)")
xlabel('t');
ylabel('x(t-4)');
%%
b=x((1/1.5)*t);
plot(t,b);
xlim([-10 10]);
ylim([-1 5]);
grid on;
title("Inciso b)")
xlabel('t');
ylabel('x(t/1.5)');
%%
c=x(-t);
plot(t,c);
xlim([-10 10]);
ylim([-1 5]);
grid on;
title("Inciso c)")
xlabel('t');
ylabel('x(-t)');
%%
d=x(2*t-4);
plot(t,d);
xlim([-10 10]);
ylim([-1 5]);
grid on;
title("Inciso d)")
xlabel('t');
ylabel('x(2t-4)');
%%
e=x(2-t);
plot(t,e);
xlim([-10 10]);
ylim([-1 5]);
grid on;
title("Inciso e)")
xlabel('t');
ylabel('x(2-t)');
%% Ejercicio 6
% 
% Escriba una funci�n que se llame energia que reciba como argumento una
% funci�n (anonima o simbolica) y que regrese el calculo de la energ�a,
% para esto puede resultar �til investigar las instrucciones int , integral
% Se presupone utilizar el c�digo solo con funciones de energia. Muestre el
% c�digo sin ejecutar, y posteriormente resuelva el problema 1.1.3
% 
% *Funci�n de energ�a*
%
% Para esta funci�n vamos a definir primeramente una variable simb�lica
% Esta funci�n devuelve la expresi�n anal�tica de la energ�a y su valor
% num�rico. Para esto nuestra funci�n requiere de tres par�metros, el
% primero es la funci�n, el segundo es el l�mite inferior de la funci�n y
% el segundo el l�mite superior de la misma.
%
% Nuestra funci�n tiene la siguiente estructura
%
%   function E = energia(f,a,b)
%
%       display('Enegerg�a expresi�n anal�tica: ')
%
%       int((sqrt(f^2))^2)
%
%       display('Evaluando ')
%
%       E=int(f,[a b]);
%
%   end
% 
% Para probarla realizaremos el ejercicio 1.1.3 que nos pide lo siguiente
%
% Encontrar la energ�a del par de se�ales x(t) y y(t) descritas en las
% figuras. Bosqueja y encuentra las energ�as de las se�ales x(t)+y(t) y
% x(t)-y(t)
%
% Declaramos dos variables simb�licas
%% Ejercicio 7
% 
% Escriba una funci�n que se llame potencia que reciba como argumento una
% funci�n (anonima o simbolica) y que regrese el calculo de la potencia
% para esto puede resultar �til investigar las instrucciones int , integral
% Se presupone utilizar el c�digo solo con funciones de potencia. Muestre
% el c�digo sin ejecutar, y posteriormente resuelva el problema 1.1.4
%% 
%   function  P = potencia(f,T)
%
%       disp('potencia de una expresion analitica');
%
%       disp('evaluando');
% 
%       P=(1/T) * integral(f,-T/2, T/2);
% 
%   end
%

%%
% *Problema 1.1.4*
% Encuentre la potencia de la se�al peri�dica $x(t)=t^{3}$.
% Encuentra tambi�n las potencias y los valores rms de:
% 
% a) $-x(t)$
%
% b) $2x(t)$ 
%
% c) $cx(t)$
% 
% *Figura $x(t)$*
x=@(t) t.^3;
t=-100:0.1:100;
plot(t,x(t),'LineWidth',2)
grid on;
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.Box = 'off';
title('Gr�fica de la se�al f(t)=t^3 ')
%%
% a) $-x(t)$
f=(@(t) ((abs(-(t.^3))).^2));
p = potencia(x,4)
% Valor de RMS
rms = sqrt(p)
%%
% b) $2x(t)$ 
f=(@(t) ((abs(2.*(t.^3))).^2));
potencia(f,4) 
% Valor de RMS
rms=sqrt(ans)

%%
% c) $cx(t)$
f=(@(t) ((abs((t.^3))).^2));
potencia(f,4) 
% Valor de RMS
rms=sqrt(ans)








