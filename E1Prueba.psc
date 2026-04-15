Proceso sin_titulo
	Definir A, N, Par, Impar, NMayor, NMenor, V, SumImpar Como Entero;
	Definir PromImpar Como Real;
	Par = 0;
	Impar = 0;
	//Se realiza un valor de iniciacion de 9999 en NMenor para realizar la comparacion
	NMenor <- 9999;
	Para V<-1 Hasta 20 Con Paso 1 Hacer
		N <- Azar(9999);
		A = N MOD(2);
		Si A = 0 Entonces
			Par = Par +1;
		SiNo
			Impar = Impar +1;
			SumImpar = SumImpar + N;
		FinSi
		Si N > NMayor Entonces
			NMayor <- N;
		SiNo
			Si N < NMenor Entonces
				NMenor <- N;
			FinSi
		FinSi
	Escribir V,". ",N,;	
	FinPara
	PromImpar = SumImpar/Impar;
	Escribir "Cantidad Par = ", Par;
	Escribir "Promedio de Impar = ", PromImpar;
	Escribir "Número Mayor = ", NMayor;
	Escribir "Número Menor = ", NMenor;
FinProceso
