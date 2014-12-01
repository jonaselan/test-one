dia = gets.to_i
mes = gets.to_i
ano = gets.to_i


if ((dia == 31) && ((mes == 4) || (mes == 6) || (mes == 9) || (mes == 11))) then
		puts "Invalida"
	else
	if ((mes == 2) && ((dia == 29) || (dia == 30) || (dia == 31)))
			puts "Invalida"
	else
			if ((dia < 0) || (dia > 31)) then
				puts "Invalida"
					elsif ((mes < 0) || (mes > 12)) then
				puts "Invalida"
					else
				puts "Valida"
			end
	end
end


