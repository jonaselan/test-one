dia = gets.to_i
mes = gets.to_i
ano = gets.to_i
aux = ""

if ((dia == 31) && ((mes == 4) || (mes == 6) || (mes == 9) || (mes == 11))) then
		aux = "Invalida"
	else
		if ((mes == 2) && ((dia == 29) || (dia == 30) || (dia == 31)))
				aux = "Invalida"
		else
			if ((dia < 0) || (dia > 31)) then
				aux = "Invalida" 
					elsif ((mes < 0) || (mes > 12)) then
				aux = "Invalida" 
					else
				aux = "Valida" 
			end
		end
end

if ((ano < 0) || (ano.to_s.length > 4))  then
	aux = "Invalida"
end

if (aux != "Invalida") then
	dia = dia.to_i - 1

		if (dia == 0) then
			if (mes != 3) then
				if (mes == 1) then
						dia = 31
						mes = 12
						ano = ano - 1
					elsif ((mes == 5) || (mes == 7) || (mes == 10 ) || (mes == 12)) then
						dia = 30
						mes = mes - 1
					else
						dia = 31
						mes = mes - 1
				end
			else
			dia = 28
			mes = mes - 1
			end

		end
	
		print ("%.02d"%dia.to_s + "/")
		print ("%.02d"%mes.to_i + "/")
		print ("%.04d"%ano)		
end

