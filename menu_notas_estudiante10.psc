Funcion menu=opc(intro)
	
		Escribir "Elija una opcion"
		Escribir "1: Ingrese notas"
		Escribir "2: Ingrese numero de insasitencias"
		Escribir "3: LIstado de estudiantes"
		Escribir "4: Calcular nota"
		Escribir "0: Salir"
		leer menu
FinFuncion

Funcion ingresar=int(codigo,nombre,nota1,nota2,nota3,x)
	Repetir
		Escribir "ingrese su codigo"
		leer codigo[x]
		Escribir "ingrese su nombre"
		Leer nombre[x]
		Escribir "ingrese la primera nota"
		leer nota1[x]
		Escribir "ingrese la segunda nota"
		leer nota2[x]
		Escribir "ingrese la tercera nota"
		leer nota3[x]
		Escribir "desea ingresar otro estudiante si/no"
		leer p
	Hasta Que p="no"
FinFuncion

Funcion inasistencias=t(codigo,inasistencia,x)
	Repetir
		Para i=1 hasta x-1 hacer
			Escribir "digite el codigo del estudiante"
			Leer cod
			si cod=codigo[i] Entonces       
				Escribir "digite el numero de inasistencias"
				leer inasistencia
				Escribir "desea agregar otra inasistencia si/no"
				Leer p
			SiNo
				Escribir "codigo invalido intente de nuevo"
			FinSi
		FinPara
		
	Hasta Que  p <> "si"
FinFuncion

Funcion lista=est(codigo,nombre,x)
		
		Para i=1 hasta x-1 hacer
			Escribir codigo[i],nombre[i]
	FinPara
FinFuncion

Funcion calificacion=calf(codigo,nombre,nota1,nota2,nota3,inasistencia,x)
	Repetir
		
		Para i=1 hasta x-1 hacer
			Escribir "digite el codigo del estudiante"
			Leer cod
			si cod=codigo[i] Entonces
				Escribir "codigo:",codigo[i]," ","nombre: ",nombre[i]," ","N1:",nota1[i]," ","N2:",nota2[i]," ","N3:",nota3[i]," ","inasistencias: ",inasistencia[i], " ","promedio: ",promedio= (nota1[i]+nota2[i]+nota3[i])/3
			FinSi
			si cod<>codigo[i] Entonces
				Escribir "codigo no encontrado ingrese de nuevo"
			FinSi
			Escribir "desea agregar otro estudiante a la lista si/no"
			leer p
		FinPara
	Hasta Que p <> "si"
FinFuncion

Algoritmo menu_notas_estudiante
	Dimension codigo[1]
	Dimension nombre[1]
	Dimension nota1[1]
	Dimension nota2[1]
	Dimension nota3[1]
	Dimension inasistencia[1]
	Dimension promedios[1]
	x=0
	Repetir
		menu =opc(1)
		x=x+1
		Segun menu Hacer
			1:
				ingresar=int(codigo,nombre,nota1,nota2,nota3,x)
			2:
				inasistencias=t(codigo,inasistencias,x)
			3:
				lista=est(codigo,nombre,x)
			4:
				calificacion=calf(codigo,nombre,nota1,nota2,nota3,inasistencia,x)
		FinSegun
	Hasta Que menu=0
FinAlgoritmo
