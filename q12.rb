n1 = gets.to_i
n2 = gets.to_i
n3 = gets.to_i

if ((n1 > n2) && (n1 > n3)) then 
	if (n2 > n3) then
		puts n1
		puts n2
		puts n3
	else
		puts n1
		puts n3
		puts n2
	end
end

if ((n2 > n1) && (n2 > n3)) then 
	if (n1 > n3) then
		puts n2
		puts n1
		puts n3
	else
		puts n2
		puts n3
		puts n1
	end
end

if ((n3 > n2) && (n3 > n1)) then 
	if (n1 > n2) then
		puts n3
		puts n1
		puts n2
	else
		puts n3
		puts n2
		puts n1
	end
end
