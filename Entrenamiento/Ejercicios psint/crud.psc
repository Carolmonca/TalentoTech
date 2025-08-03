Algoritmo crud
	Dimensionar menu[5]
	definir op Como Entero
	definir puede_registrarse como caracter
	definir encontrado Como Caracter
	
	
	menu[1] = "1. Registrar usuario"
	menu[2] = "2. Actualizar usuario"
	menu[3] = "3. Buscar usuario"
	menu[4] = "4. comprar tiquete"
	menu[5] = "5. Salir"
	
Repetir
	Para i<-1 Hasta 5 Hacer
		imprimir menu[i]
	Fin Para
	
	imprimir "Elija opción: "
	leer op
	
	puede_registrar = "si"
	Segun op Hacer
		1:
			Escribir "CUANTOS USUARIOS DESEA REGISTRAR: "
			Leer n
			Dimensionar cedula[n], nombres[n], apellidos[n], edad[n]
			
			Imprimir "Digite la cedula del usuario o registrar: "
			leer cedula_usuario
			puede_registrar = "si" 
			
			Para i<-1 Hasta n Hacer
				Si cedula_usuario = cedula[i] Entonces
					puede_registrar = "no"
				Fin Si
			Fin Para
			Si puede_registrar = "si" Entonces
				imprimir "Digite los nombres del usuario a registrar: "
				Leer nombres_usuario
				imprimir "Digite los apellidos del usuario a registrar: "
				leer apellidos_usuario
				imprimir "Digite la edad del usuario a registrar: "
				leer edad_usuario
				
				i=1
				a=0
				Mientras i<= n Hacer
					Si cedula[i] = "" Entonces
						cedula[i] = cedula_usuario
						nombres[i] = nombres_usuario
						apellidos[i] = apellidos_usuario
						edad[i] = edad_usuario
						a=i
						imprimir ""
						imprimir "USUARIO REGISTRADO"
						imprimir "cedula: ", cedula[i], "NOMBRES ", nombres[i], "APELLIDOS ", apellidos[i], "EDAD ", edad[i]
						IMPRIMIR ""
						Si i< n Entonces
							Imprimir "Digite la cedula del usuario a registrar: "
							leer cedula_usuario
							Imprimir "Digite los nombres del usuario a registrar: "
							leer nombres_usuario
							Imprimir "Digite los apellidos del usuario a registrar: "
							leer apellidos_usuario
							Imprimir "Digite la edad del usuario a registrar: "
							leer edad_usuario
						Fin Si
						
					FinSi
					i = i+1
				FinMientras
			SiNo
				imprimir ""
				imprimir "EL USUARIO NO PUEDE REGISTRARSE"
				IMPRIMIR ""
				
			Fin Si
			imprimir ""
			imprimir "LISTADO DE USUARIOS REGISTRADOS"
			IMPRIMIR ""
			Para i <- 1 Hasta n Hacer
				Si cedula[i] <> "" Entonces
					Imprimir " "
					Imprimir "Usuario #", i
					Imprimir "Cédula: ", cedula[i]
					Imprimir "Nombres: ", nombres[i]
					Imprimir "Apellidos: ", apellidos[i]
					Imprimir "Edad: ", edad[i]
					Imprimir " "
				FinSi
			FinPara
		
		2: 
			encontrado = "nok"
			imprimir "DIGITE LA CEDULA DEL USUARIO AL CUAL SE ACTUALIZAN LOS DATOS"
			LEER cedula_usuario_mod
			
			i=1
			
			Mientras i<= a Hacer
				
				Si cedula[i] = cedula_usuario_mod Entonces
					imprimir "Digite los nuevos nombres: "
					leer nuevo_nombre
					imprimir "Digite los nuevos apellidos: "
					leer nuevos_apellidos
					imprimir "Digite los nueva edad: "
					leer nueva_edad
				
					
					nombres[i] = nuevo_nombre
					apellidos[i] = nuevos_apellidos
					edad[i] = nueva_edad
					encontrado = "ok"
				SiNo 
					i =i+1
				Fin Si
				
			Fin Mientras

			Si encontrado = "nok" Entonces
				imprimir ""
				Imprimir "EL USUARIO NO SE ENCUENTRA REGISTRADO"
				imprimir ""
			Fin Si
			imprimir ""
			imprimir "USUARIOS REGISTRADOS"
			para i <-1 hasta a Hacer
				imprimir "cedula: ", cedula[i], " NOMBRES: ", nombres[i], " APELLIDOS: ", apellidos[i], " EDAD: ", edad[i]
			FinPara
		3:
			encontrado = "nok"
			imprimir "DIGITE LA CEDULA DEL USUARIO A BUSCAR: "
			LEER cedula_usuario
			Para i<-1 Hasta n Hacer
				Si cedula_usuario = cedula[i] Entonces
					imprimir ""
					imprimir "EL USUARIO SE ENCUENTRA REGISTRADO"
					imprimir "cedula: ", cedula[i], " NOMBRES: ", nombres[i], " APELLIDOS: ", apellidos[i], " EDAD: ", edad[i]
					encontrado = "ok"
				Fin Si
			Fin Para
			si encontrado = "nok" Entonces
				imprimir ""
				Imprimir "EL USUARIO NO SE ENCUENTRA REGISTRADO"
				Imprimir ""
			FinSi
		4:
			encontrado = "nok"
			imprimir "cedula del pasajero: "
			Leer cedula_pasajero
			
			i = 1
			mientras i<= n Hacer
				
				Si cedula[i] = cedula_pasajero Entonces
					encontrado = "ok"
					imprimir "DESEO VIAJAR A: "
					imprimir "1. España"
					imprimir "2. Inglaterra"
					imprimir "3. Ninguno"
					
					imprimir "Cual es su opción: "
					leer opcion_viaje 
					
					Segun opcion_viaje  Hacer
						opcion 1:
							IMPRIMIR "El valor del tiquete es de: 1.000.000"
							imprimir ""
						opcion 2:
							IMPRIMIR "El valor del tiquete es de: 1.000.000"
							imprimir ""
						opcion 3:
							imprimir " Hasta la póxima"
							imprimir ""
						De Otro Modo:
							imprimir " OPCIÓN NO VALIDA"
							imprimir ""
					Fin Segun
					
					i = 3
				Fin Si
				i = i+1
			FinMientras
			
			si encontrato = "nok" Entonces
				imprimir "EL USUARIO NO SE ENCUENTRA REGISTRADO - NO PUEDE COMPRAR TIQUETE"
				imprimir ""
			SINO 
				imprimir "USUARIO ENCONTRADO"
				imprimir ""
				
				Segun opcion_viaje  Hacer
					opcion 1:
						IMPRIMIR "Tiene un viaje pendiete a ESPAÑA"
						imprimir ""
					opcion 2:
						IMPRIMIR "Tiene un viaje pendiete a INGLATERRA"
						imprimir ""
					opcion 3:
						imprimir "NO COMPRO NINGUN TIQUETE"
						imprimir ""
					De Otro Modo:
						imprimir "OPCIÓN NO VALIDA"
						imprimir ""
				Fin Segun
				
			FinSi
		5:
			
			mostrar "USTED ESCOGIO LA OPCION SALIR"
		De Otro Modo:
			mostrar "OPCION INCORRECTA, ESCOJA ENTRE 1 A 5"
	
	
Fin Segun
	
	para i<-1 hasta 5 Hacer
		Imprimir menu[i]
	FinPara
	
	Imprimir "Elija la opción: "
	leer op
Hasta Que op = 5
FinAlgoritmo
