n1 = gets.to_i
n2 = gets.to_i

if (n1 > n2) then
	if ((n1%n2) == 0) then
		puts "MULTIPLO"
	end
else
	if ((n2%n1) == 0) then
		puts "MULTIPLO"	
	end
end
