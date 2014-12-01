a = gets.to_i
b = gets.to_i
c = gets.to_i


if ((((b-c).abs) < a) && (a < (b+c))) then
	if ((((a-c).abs) < b) && (b < (a+c))) then
		if ((((a-b).abs) < c) && (c < (a+b))) then
			
			/ verificar angulos /
				if ((a == b) && (b == c) && (a == c)) then 
					puts "Equilatero"
				elsif ((a != b) && (b != c) && (a != c)) then
						puts "Escaleno"
						else 
							puts "Isosceles"	
				end
				
		else
		puts "Nenhum"	
		end
	else
		puts "Nenhum"
	end
else
	puts "Nenhum"
end