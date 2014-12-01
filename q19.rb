/ qtd combustivel em c1 (L) /
qtdCC1 = gets.to_i

/ consumo em kilometros por litro (real) /
kmL = gets.to_f

/ velocidade de deslocamento C1 (kmh) /
velocDesC1 = gets.to_i

/ velocidade de deslocamento C2 (kmh) /
velocDesC2 = gets.to_i

/ distancia entre C1 e C2 (inteiro, em km). / 
DistC1C2 = gets.to_i

/ horas que o carro 1 pode andar /
hr = ((kmL*qtdCC1)/velocDesC1)  


aux2 = ((hr * velocDesC2) + DistC1C2)

if ((kmL*qtdCC1) > aux2) then
	
	/ hora de encontro /
	hrEncontro = ((velocDesC1 - velocDesC2)/DistC1C2)


	segEncontro = (hrEncontro*3600)

	seg = 0
	min = 0 
	hora = 0

	for i in 0..(segEncontro - 1)do
		seg = seg + 1
		if (seg == 60) then
			seg = 0
			min = min + 1
			if (min == 60) then
				min = 0
				hora = hora + 1
			end
		end
	end		
	puts ("%.02d"%hora.to_s+":"+"%.02d"%min.to_s+":"+"%.02d"%seg.to_s)

else
	puts "--:--:--"
end