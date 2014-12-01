n = Array.new(5)
maior = 0

for i in 0..5 do
   n[i] = gets.to_i
end

for i in 0..5 do
	for y in 0..5 do
		if (maior < (n[i] - n[y])) then
			maior = (n[i] - n[y])
		end
	end
end

puts maior.to_i