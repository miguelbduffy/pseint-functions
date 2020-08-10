//Realizar una función que calcule y retorne la suma de todos los divisores del número n
//distintos de n. El valor de n debe ser ingresado por el usuario.

//PROBLEMA: calcular y retornar la suma de todos los divisores del número distintos de n (hay que usar una función)
//SOLUCIÓN:
//1) definir variables n y suma como enteros
//2) 


//SE DEFINE LA FUNCIÓN FUERA DEL ALGORITMO PARA PODER SER LLAMADA UNA O MÁS VECES DENTRO DEL ALGORITMO.
Funcion suma_de_divisores <- calcular_la_suma_de_divisores ( i, n, suma )
	Para i = 1 Hasta n - 1 Hacer
		Si (n % i == 0) Entonces
			suma = suma + i
		FinSi
	Fin Para
	Escribir "La suma de todos los divisores del número ", n, " distintos a ", n, " es: ", suma, "."
Fin Funcion

Algoritmo SBPF1
	//SE DEFINEN LOS ARGUMENTOS Y VALORES FUERA DE LA FUNCIÓN YA QUE TIENE QUE DEVOLVER UN RESULTADO ESPECÍFICO POR CADA VEZ QUE SE LLAMA A LA FUNCIÓN.
	Definir i, n, suma Como Entero
	
	Escribir "Ingresá un número entero"
	Leer n
	
	suma = 0
	i = 1
	
	Escribir calcular_la_suma_de_divisores(i, n, suma)
	
FinAlgoritmo


