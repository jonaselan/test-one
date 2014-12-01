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

/ se a data for valida /
if (aux == "Valida") then
n = gets.to_i
if (n > 0) then
	array = Array.new(n)
	for i in 1..n do 
		array[i] = 1
	end

		for y in 1..n do
			dia = dia + array[y]

			if ((dia == 31) || (dia == 32)) then
				if ((mes == 1)) then
					mes = 2
					dia = 1
				end		
				if ((mes == 3)) then
					mes = 4
					dia = 1
				end		
				if ((mes == 5)) then
					mes = 6
					dia = 1
				end
				if ((mes == 7)) then
					mes = 8
					dia = 1
				end
				if ((mes == 8)) then
					mes = 9
					dia = 1
				end
				if ((mes == 10)) then
					mes = 11
					dia = 1
				end
				if ((mes == 12)) then
					mes = 1
					dia = 1
					ano = ano + 1
				end			
			end


			if (dia == 30) then
				if ((mes == 4)) then
				mes = 5
				dia = 1
				end	
				if ((mes == 6)) then
					mes = 7
					dia = 1
				end
				if ((mes == 9)) then
					mes = 10
					dia = 1
				end	
				if ((mes == 11)) then
					mes = 12
					dia = 1
				end	
			end
				
			
			if ((mes == 2) && (dia == 28)) then
			mes = 3
			dia = 1
			end


		end

			print ("%.02d"%dia.to_s + "/")
			print ("%.02d"%mes.to_i + "/")
			print ("%.04d"%ano)


end
	end

