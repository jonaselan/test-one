n1 = gets.to_f
n2 = gets.to_f

if (((n1 < 0.0) || (n1 > 10.0)) || ((n2 < 0.0) || (n2 > 10.0)))
	puts "INVALIDA"
else
	media = ((n1 * 2.0) + (n2 * 3.0))/5
	if (media >= 0.0) && (media <= 2.0) then
		puts "%.1f" % media + ":REPROVADO"
	elsif (media > 2.0) && (media < 6.0) then
		puts "%.1f" % media + ":RECUPERACAO"
	else
		puts "%.1f" % media + ":APROVADO" 
	end
end
