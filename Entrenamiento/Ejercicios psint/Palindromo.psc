Algoritmo Palindromo
	Definir palabra, invertida como cadena
	
	Escribir "Ingrese una palabra: "
	leer palabra
	
	invertida = ""
	
	Para i <- Longitud(palabra) Hasta 1 Con Paso -1 Hacer
		invertida = invertida + Subcadena(palabra,i,i)
	Fin Para
	
	Si palabra = invertida Entonces
		Escribir palabra , " ES UN PALINDROMO"
	SiNo
		Escribir palabra , " NO ES UN PALINDROMO"
	Fin Si
FinAlgoritmo
