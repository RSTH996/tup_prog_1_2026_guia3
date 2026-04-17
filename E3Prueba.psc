Proceso sin_titulo
	Definir Entrada, ValM,Vam, lomfall, LotesP, Vuelta, NM, Nmin, Falla, n Como Entero;
	Definir PorFallam, lotMfall, lotmifall, Lote Como Real;
	n <- 0;
	PorFalla <- 0;
	lotMfall <- 0;
	lotmifall <- 100;
	Escribir "Escriba el valor Maximo y Mínimo de tolerancia";
	Leer ValM, Vam;
	Para Lote = 0 Hasta 10 Con Paso 1 Hacer
		Repetir
			NM <- Azar(20);
			Nmin <- Azar(20);
			Si NM > ValM Entonces
				Si Nmin < Vam Entonces
					Falla = Falla + 1;
				FinSi
			FinSi
			n <- n + 1;
			Escribir "¿Quieres analizar otro Producto?, Escribe 1 par SI y 2 para NO";
			Leer Vuelta;
		Hasta Que Vuelta=2 
		Si Falla = 0 Entonces
			PorFalla = 0;
		SiNo
			PorFalla = n/Falla;
		FinSi	
		Escribir "lote N° ",Lote," se detecto ", PorFalla,"% de falla";
		Si PorFalla > lotMfall Entonces
			lotMfall <- PorFalla;
			Escribir "Lote N° ", Lote, " tiene la mayor falla con ", PorFalla, " %";
		FinSi
		Si PorFalla < lotmifall Entonces
			lotMfall <- PorFalla;
			Escribir "Lote N° ", Lote, " tiene la menor falla con ", PorFalla, " %";
		FinSi
	FinPara
FinProceso
