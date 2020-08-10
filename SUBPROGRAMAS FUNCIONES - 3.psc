//Dos números son amigos si cada uno de ellos es igual a la suma de los divisores del
//otro. Por ejemplo 220 y 284 son amigos ya que:
//Suma de divisores de 284= 1 + 2 + 4 + 71 + 142 = 220
//Suma de divisores de 220 = 1 + 2 + 4 + 5 + 10 + 11 + 20 + 22 + 44 + 55 + 110 = 284
//Escriba un programa que a través del uso de una función determine si dos números
//ingresados por el usuario son amigos o no.

Funcion amigos <- calcular_numeros_amigos ( numero1,numero2 )
	
	Definir i, a, b, suma_a, suma_b como entero
	
	Escribir "Ingresá un número"
	Leer a
	
	Escribir "Ingresá otro número"
	Leer b
		
	suma_a = 0
	
	suma_b = 0
	
	Para i = 1 Hasta a - 1 Hacer
		Si a % i == 0 Entonces
			suma_a = suma_a + i
		FinSi
	Fin Para
	
	Para i = 1 Hasta b - 1 Hacer
		Si b % i == 0 Entonces
			suma_b = suma_b + i
		FinSi
	Fin Para
	
	Si suma_a == b Entonces
		Escribir "Los números ", a, " y ", b, " son amigos."
	SiNo
		Escribir "Los números ", a, " y ", b, " no son amigos."
	FinSi
	
Fin Funcion

Algoritmo ej3
		Definir a,b Como Entero
		
		a= 0
		b= 0
	
	Escribir calcular_numeros_amigos(a,b)
	
FinAlgoritmo


