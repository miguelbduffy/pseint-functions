//	Los empleados de una fábrica trabajan en dos turnos: Diurno y Nocturno. Se desea
//	calcular el jornal diario de acuerdo con las siguientes reglas:
//	a) La tarifa de las horas diurnas es de $ 90
//	b) La tarifa de las horas nocturnas es de $ 125
//	c) En caso de ser feriado, la tarifa se incrementa en un 10% si el turno es diurno y
//	en un 15% si el turno es nocturno.
//	El programa debe solicitar la siguiente información al usuario: el nombre del trabajador,
//	el día de la semana, el turno (diurno o nocturno) y la cantidad de horas trabajadas.
//	Tener en cuenta que al usuario se le solicita que ingrese el día de la semana (lunes,
//	martes, etc.), pero para calcular el jornal diario debemos saber si el día ingresado es
//	festivo o no. Utilice una función para realizar el cálculo.


Funcion jornal_diario <- calcular_jornal_diario ( name1, dia1, turno1, horas_trabajadas1, calcular_jornal1)
	
	Definir name, dia, turno, feriados Como Caracter
	Definir horas_trabajadas, calcular_jornal Como Real
	
	Escribir "Nombre"
	Leer name
	
	Escribir "Día de la semana"
	Leer dia
	
	Escribir "Turno (diurno / nocturno)"
	Leer turno
	
	Escribir "Cantidad de horas trabajadas"
	Leer horas_trabajadas
	
	//feriado = martes
		
	Si (dia = "martes") y (turno = "diurno") Entonces
		calcular_jornal = (horas_trabajadas * 90) * 1.10
		Escribir "El jornal en día feriado y turno diurno de ", name, " es ", calcular_jornal, "."
	SiNo
		Si (dia == "martes") y (turno == "nocturno") Entonces
			calcular_jornal = (horas_trabajadas * 125) * 1.15
			Escribir "El jornal en día feriado y turno nocturno de ", name, " es ", calcular_jornal, "."
		SiNo
			Si (turno == "diurno") Entonces
					calcular_jornal = horas_trabajadas * 90
					Escribir "El jornal de en día normal y turno diurno de ", name, " es ", calcular_jornal, "."	
				SiNo
					calcular_jornal = horas_trabajadas * 125
					Escribir "El jornal de en día normal y turno nocturno de ", name, " es ", calcular_jornal, "."	
			FinSi
		FinSi
	FinSi
	
	
Fin Funcion


Algoritmo ej5
	
	Definir name, dia, turno, feriados Como Caracter
	Definir horas_trabajadas, calcular_jornal Como Real
	
	name = ""
	dia = ""
	turno = ""
	horas_trabajadas = 0
	calcular_jornal = 0
	
	Escribir "El jornal diario es: ", calcular_jornal_diario(name, dia, turno, horas_trabajadas, calcular_jornal)
	
FinAlgoritmo
