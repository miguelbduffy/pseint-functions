//Realizar una funci�n que permita obtener el t�rmino n de la sucesi�n de Fibonacci. La
//sucesi�n de Fibonacci es la sucesi�n de los siguientes n�meros:
//1, 1, 2, 3, 5, 8, 13, 21, 34, ...
//Donde cada uno de los n�meros se calcula sumando los dos anteriores a �l.
//Por ejemplo:
//La sucesi�n del n�mero 2 se calcula sumando (1+1)
//An�logamente, la sucesi�n del n�mero 3 es (1+2),
//Y la del 5 es (2+3),
//Y as� sucesivamente�
//La sucesi�n de Fibonacci se puede formalizar de acuerdo a la siguiente f�rmula:ss
//Fibonaccin = Fibonaccin-1 + Fibonaccin-2 para todo n>1
//Fibonaccin = 1 para todo n<=1
//Por lo tanto, si queremos calcular el t�rmino �n� debemos escribir una funci�n que
//reciba como par�metro el valor de �n� y que calcule la serie hasta llegar a ese valor.
//Para conocer m�s acerca de la serie de Fibonacci consultar el siguiente link:
//https://quantdare.com/numeros-de-fibonacci/


Funcion fibo <- calcular_fibo ( x1 )
	
	Definir a, b, suma, i como Entero
	
	a = 0
	b = 1
	
	Para i = 1 Hasta x1 Hacer
		suma = a + b
		a = b
		b = suma
		
	Fin Para
	
	Escribir "El t�rmino de la sucesi�n de Fibo es ", a
	
Fin Funcion

Algoritmo ej7fibonnaci
	
	Definir num1 Como Entero
	
	Escribir "Ingres� un n�mero que indique el t�rmino de la sucesi�n de Fibonnaci"
	Leer num1
	
	Escribir calcular_fibo(num1)
	
FinAlgoritmo