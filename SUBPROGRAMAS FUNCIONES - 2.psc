//Dise�ar una funci�n que permita obtener el m�ximo com�n divisor de dos n�meros
//mediante el algoritmo de Euclides. Si no conoce el algoritmo de Euclides puede
//consultar el siguiente link: https://www.gaussianos.com/el-algoritmo-de-euclides/.


Funcion quiero_numeros <- de_euclides ( num1,num2 )
	
	Definir ar01, ar02, resto como Entero
	
	Si num2 > num1 Entonces
		ar01 = num1 // 150
		num1 = num2 // 250
		num2 = ar01 // 150
	FinSi
	
	resto = num1 % num2 // 100
	
	Mientras resto > 0 Hacer
		num1 = num2 // 150
		num2 = resto // 100
		resto = num1 % num2 // 50
	Fin Mientras
	
	Escribir num2
	
Fin Funcion

Algoritmo ej2
	
	Definir num1, num2, x Como Entero
	
	Escribir "Ingres� un n�mero entero"
	Leer num1
	
	Escribir "Ingres� otro n�mero entero"
	Leer num2
	
	Mientras num1 <= 0 Hacer
		Escribir "Por favor ingres� un n�mero entero"
		Leer num1
	Fin Mientras
	
	Mientras num2 <= 0 Hacer
		Escribir "Por favor ingres� un n�mero entero"
		Leer num2
	Fin Mientras
	
	Escribir "El resultado es: ", de_euclides(num1,num2)
	
FinAlgoritmo