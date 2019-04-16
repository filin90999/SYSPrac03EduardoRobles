   function  P = potencia(f,T)
  display('Potencia de una expresion analitica')
  display('evaluando')
  P = (1/T)*integral(f,-T/2, T/2);
 end
