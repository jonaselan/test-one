n1 = gets.to_i
n2 = gets.to_i
n3 = gets.to_i

if ((n1 > n2) && (n1 > n3)) then
	if (n2 > n3) then
		if ((n1%n3 == 0) && (n2%n3 == 0)) then
		puts "DIVISOR"		
		end		
	end
end

if ((n2 > n1) && (n2 > n3)) then
	if (n3 > n1) then
		if ((n2%n1 == 0) && (n3%n1 == 0)) then
		puts "DIVISOR"					
		end		
	end
end

if ((n3 > n1) && (n3 > n2)) then
	if (n2 > n1) then
		if ((n2%n1 == 0) && (n3%n1 == 0)) then
		puts "DIVISOR"					
		end			
	end
end

if ((n1 > n2) && (n1 > n3)) then
	if (n2 < n3) then
		if ((n1%n2 == 0) && (n3%n2 == 0)) then
		puts "DIVISOR"		
		end		
	end
end

if ((n2 > n1) && (n2 > n3)) then
	if (n3 < n1) then
		if ((n1%n3== 0) && (n2%n3 == 0)) then
		puts "DIVISOR"					
		end		
	end
end


if ((n3 > n1) && (n3 > n2)) then
	if (n2 < n1) then
		if ((n1%n2 == 0) && (n3%n2 == 0)) then
		puts "DIVISOR"					
		end			
	end
end
