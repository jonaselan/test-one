n1 = gets.to_i
n2 = gets.to_i
n3 = gets.to_i
n4 = gets.to_i
n5 = gets.to_i
n6 = gets.to_i

maior = n1
menor= n1
result = 0

if (maior < n2) then
	maior = n2	
end

if (maior < n3) then
	maior = n3	
end

if (maior < n4) then
	maior = n4	
end

if (maior < n5) then
	maior = n5	
end

if (maior < n6) then
	maior = n6
end



if (menor > n2) then
	menor = n2	
end

if (menor > n3) then
	menor = n3	
end
if (menor > n4) then
	menor = n4	
end
if (menor > n5) then
	menor = n5	
end
if (menor > n6) then
	menor = n6	
end

result = maior - menor

puts result