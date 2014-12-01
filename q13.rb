ax = gets.to_i
ay = gets.to_i
bx = gets.to_i
by = gets.to_i

if (((bx - ax).abs) == ((by - ay).abs)) then 
	puts "Quadrado"
else 
	puts "Retangulo"
end
