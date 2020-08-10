
//Solicitar al usuario que digite un número y escriba un programa que a través del uso de
//funciones determine lo siguiente:
//a) Si el número es capicúa (Por ejemplo: 12321)
//		b) Si el número es primo o no. Un número es primo cuando es divisible sólo por 1
//		y por sí mismo, por ejemplo: 2, 3, 5, 7, 11, 13, 17, etc.
//		c) Si el número tiene todos sus dígitos impares (ejemplo: 333, 55, etc.)
//				Todas las opciones deben ser presentadas al usuario a través de un menú de
//				opciones. Además, las operaciones se deben resolver matemáticamente, NO es
//				posible convertir el número a cadena para resolver el problema.

Funcion operacion <- CalcularOper ( num, opc )
	
	Definir capicua, primo, c1, c2, i, num2, cont, cont1, pot, digito, aux, arreglo Como Real
	
	cont = 0
	cont1 = 0
	num2 = 0
	
	Segun opc Hacer
			//a) Si el número es capicúa (Por ejemplo: 12321)
		"C":
			c1 = num
			c2 = num mod 10
			Mientras num > 9 Hacer
				num = trunc (num/10)
				c2 = c2 * 10 + (num mod 10)
			FinMientras
			Si c1 = c2 Entonces
				Escribir "El numero es capicua"
			SiNo
				Escribir "El numero no es capicua"
			FinSi
		"P":
			//			b) Si el número es primo o no. Un número es primo cuando es divisible sólo por 1
			//				y por sí mismo, por ejemplo: 2, 3, 5, 7, 11, 13, 17, etc.
			Mientras num == 1 Hacer
				
				Escribir "El número 1 no es primo ni primo. Por favor elegí otro"
				Leer num
				
			FinMientras
			
			Para i = 2 Hasta num - 1 Hacer
				
				Si num % i == 0 Entonces
					
					cont = cont + 1
					
				FinSi
				
			FinPara
			
			Si cont > 0 y num <> 2 Entonces
				Escribir "El número no es primo"
			SiNo
				Escribir "El número es primo"
			FinSi
			
			
		"I":
			//c) Si el número tiene todos sus dígitos impares (ejemplo: 333, 55, etc.)
			cont <- 0 
			Si num = 0 Entonces
				cont <- 0;
				Escribir "El número tiene 1 dígito";
				Escribir "El digito 1 es 0";
			Sino
				cont <- (redon(redon(ln(num)/2.303)));
			FinSi   
			
			//			Escribir "El numero tiene ",cont," digitos";
			
			// luego, mostrarlos uno por uno 
			aux<-num;
			Para i<-1 hasta cont Hacer
				pot <- 10^(cont-i); // por cuanto hay que dividir para obtener el primer digito
				digito <- trunc (aux / pot); // obtener el digito
				aux <- aux - digito*pot; // quitar ese digito al numero
				//				Escribir "El digito ",i," es ",digito;
				Si digito MOD 2 = 0 o digito = 0 Entonces
					
					cont1 = cont1 + 1
					
				FinSi
			FinPara
			Si cont1 > 0 Entonces
				
				Escribir "El número no tiene todos sus dígitos impares"
				
			SiNo
				
				Escribir "El número tiene todos sus dígitos impares"
				
			FinSi
	FinSegun
	
Fin Funcion

Algoritmo Ejerc6
	
	Definir num Como Real
	Definir opc Como Caracter
	
	Escribir "Ingrese un número"
	Leer num
	
	Escribir "Elija una opcion para realizar la operacion, C (capicua), P (primo) o I (impar)."
	Leer opc
	
	Escribir CalcularOper(num,opc)
	
FinAlgoritmo