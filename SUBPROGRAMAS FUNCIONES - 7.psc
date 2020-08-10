//Realizar una función que permita obtener el término n de la sucesión de Fibonacci. La
//sucesión de Fibonacci es la sucesión de los siguientes números:
//1, 1, 2, 3, 5, 8, 13, 21, 34, ...
//Donde cada uno de los números se calcula sumando los dos anteriores a él.
//Por ejemplo:
//La sucesión del número 2 se calcula sumando (1+1)
//Análogamente, la sucesión del número 3 es (1+2),
//Y la del 5 es (2+3),
//Y así sucesivamente…
//La sucesión de Fibonacci se puede formalizar de acuerdo a la siguiente fórmula:ss
//Fibonaccin = Fibonaccin-1 + Fibonaccin-2 para todo n>1
//Fibonaccin = 1 para todo n<=1
//Por lo tanto, si queremos calcular el término “n” debemos escribir una función que
//reciba como parámetro el valor de “n” y que calcule la serie hasta llegar a ese valor.
//Para conocer más acerca de la serie de Fibonacci consultar el siguiente link:
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
	
	Escribir "El término de la sucesión de Fibo es ", a
	
Fin Funcion

Algoritmo ej7fibonnaci
	
	Definir num1 Como Entero
	
	Escribir "Ingresá un número que indique el término de la sucesión de Fibonnaci"
	Leer num1
	
	Escribir calcular_fibo(num1)
	
FinAlgoritmo