time1 = gets.to_s.chomp
time2 = gets.to_s.chomp
time3 = gets.to_s.chomp

/ ------------- time 1 x time 2 -------------  /
time1golsPartida1 = gets.to_i
time2golsPartida1 = gets.to_i

if (time1golsPartida1 == time2golsPartida1) then
	/ empate /
	time1Pontos = 1
	time1QtdVitorias = 0
	time1QtdDerrotas = 0
	time1QtdEmpate = 1
	time1GolsPro = time1golsPartida1
	time1GolsContra = time2golsPartida1

	time2Pontos = 1
	time2QtdVitorias = 0
	time2QtdDerrotas = 0
	time2QtdEmpate = 1
	time2GolsPro = time2golsPartida1
	time2GolsContra = time1golsPartida1

elsif (time1golsPartida1 > time2golsPartida1) then
		/ time 1 ganhou /
		time1Pontos = 3
		time1QtdVitorias = 1
		time1QtdDerrotas = 0
		time1QtdEmpate = 0
		time1GolsPro = time1golsPartida1
		time1GolsContra = time2golsPartida1

		time2Pontos = 0
		time2QtdVitorias = 0
		time2QtdDerrotas = 1
		time2QtdEmpate = 0
		time2GolsPro = time2golsPartida1
		time2GolsContra = time1golsPartida1
	else
		/ time 2 ganhou /
		time1Pontos = 0
		time1QtdVitorias = 0
		time1QtdDerrotas = 1
		time1QtdEmpate = 0
		time1GolsPro = time1golsPartida1
		time1GolsContra = time2golsPartida1

		time2Pontos = 3
		time2QtdVitorias = 1
		time2QtdDerrotas = 0
		time2QtdEmpate = 0
		time2GolsPro = time2golsPartida1
		time2GolsContra = time1golsPartida1
end

/ ------------- time 1 x time 3 ------------- /
time1golsPartida2 = gets.to_i
time3golsPartida2 = gets.to_i

if (time1golsPartida2 == time3golsPartida2) then
	/ empate /
	time1Pontos = time1Pontos + 1
	time1QtdEmpate = time1QtdEmpate + 1
	time1GolsPro = time1GolsPro + time1golsPartida2
	time1GolsContra = time1GolsContra + time3golsPartida2

	time3Pontos = 1
	time3QtdVitorias = 0
	time3QtdDerrotas = 0
	time3QtdEmpate = 1
	time3GolsPro = time3golsPartida2
	time3GolsContra = time1golsPartida2

elsif (time1golsPartida2 > time3golsPartida2) then
		/ time 1 ganhou /
		time1Pontos = time1Pontos + 3
		time1QtdVitorias = time1QtdVitorias + 1
		time1GolsPro = time1GolsPro + time1golsPartida2
		time1GolsContra = time1GolsContra + time3golsPartida2	

		time3Pontos = 0
		time3QtdVitorias = 0
		time3QtdDerrotas = 1
		time3QtdEmpate = 0
		time3GolsPro = time3golsPartida2
		time3GolsContra = time1golsPartida2
	else
		/ time 3 ganhou /
		time1QtdDerrotas = time1QtdDerrotas + 1
		time1GolsPro = time1GolsPro + time1golsPartida2
		time1GolsContra = time1GolsContra + time3golsPartida2

		time3Pontos = 3
		time3QtdVitorias = 1
		time3QtdDerrotas = 0
		time3QtdEmpate = 0
		time3GolsPro = time3golsPartida2
		time3GolsContra = time1golsPartida2
end



/ ------------- time 2 x time 3 -------------  /
time2golsPartida3 = gets.to_i
time3golsPartida3 = gets.to_i


if (time2golsPartida3 == time3golsPartida3) then
	/ empate /
	time2Pontos = time2Pontos + 1
	time2QtdEmpate = time2QtdEmpate + 1
	time2GolsPro = time2GolsPro + time2golsPartida3
	time2GolsContra = time2GolsContra + time3golsPartida3

	time3Pontos = time3Pontos + 1
	time3QtdEmpate = time3QtdEmpate + 1
	time3GolsPro = time3GolsPro + time3golsPartida3
	time3GolsContra = time3GolsContra + time2golsPartida3

elsif (time2golsPartida3 > time3golsPartida3) then
		/ time 2 ganhou /
		time2Pontos = time2Pontos + 3
		time2QtdVitorias = time2QtdVitorias + 1
		time2GolsPro = time2GolsPro + time2golsPartida3
		time2GolsContra = time2GolsContra + time3golsPartida3

		time3QtdDerrotas = time3QtdDerrotas + 1
		time3GolsPro = time3GolsPro + time3golsPartida3
		time3GolsContra = time3GolsContra + time2golsPartida3
	else
		/ time 3 ganhou /
		time2QtdDerrotas = time2QtdDerrotas + 1
		time2GolsPro = time2GolsPro + time2golsPartida3
		time2GolsContra = time2GolsContra + time3golsPartida3

		time3Pontos = time3Pontos +3
		time3QtdVitorias = time3QtdVitorias + 1
		time3GolsPro = time3GolsPro + time3golsPartida3
		time3GolsContra = time3GolsContra + time2golsPartida3
end

time1Saldo = time1GolsPro - time1GolsContra
time2Saldo = time2GolsPro - time2GolsContra
time3Saldo = time3GolsPro - time3GolsContra


/ Caso nao haver pontos iguais! /
if ((time1Pontos != time2Pontos) && (time1Pontos != time3Pontos) && (time3Pontos != time2Pontos)) then 
	
	if ((time1Pontos > time2Pontos) && (time1Pontos > time3Pontos)) then
		if (time3Pontos > time2Pontos) then
			/ 1 > 3 > 2/
puts ("1:"+time1.to_s+":"+time1Pontos.to_s+":"+time1QtdVitorias.to_s+":"+time1QtdEmpate.to_s+":"+time1QtdDerrotas.to_s+":"+"%.02d"%time1GolsPro.to_s+":"+"%.02d"%time1GolsContra.to_s+":"+time1Saldo.to_s)
puts ("2:"+time3.to_s+":"+time3Pontos.to_s+":"+time3QtdVitorias.to_s+":"+time3QtdEmpate.to_s+":"+time3QtdDerrotas.to_s+":"+"%.02d"%time3GolsPro.to_s+":"+"%.02d"%time3GolsContra.to_s+":"+time3Saldo.to_s)
puts ("3:"+time2.to_s+":"+time2Pontos.to_s+":"+time2QtdVitorias.to_s+":"+time2QtdEmpate.to_s+":"+time2QtdDerrotas.to_s+":"+"%.02d"%time2GolsPro.to_s+":"+"%.02d"%time2GolsContra.to_s+":"+time2Saldo.to_s)

		else
			/ 1 > 2 > 3/
puts ("1:"+time1.to_s+":"+time1Pontos.to_s+":"+time1QtdVitorias.to_s+":"+time1QtdEmpate.to_s+":"+time1QtdDerrotas.to_s+":"+"%.02d"%time1GolsPro.to_s+":"+"%.02d"%time1GolsContra.to_s+":"+time1Saldo.to_s)
puts ("2:"+time2.to_s+":"+time2Pontos.to_s+":"+time2QtdVitorias.to_s+":"+time2QtdEmpate.to_s+":"+time2QtdDerrotas.to_s+":"+"%.02d"%time2GolsPro.to_s+":"+"%.02d"%time2GolsContra.to_s+":"+time2Saldo.to_s)
puts ("3:"+time3.to_s+":"+time3Pontos.to_s+":"+time3QtdVitorias.to_s+":"+time3QtdEmpate.to_s+":"+time3QtdDerrotas.to_s+":"+"%.02d"%time3GolsPro.to_s+":"+"%.02d"%time3GolsContra.to_s+":"+time3Saldo.to_s)
		end
	end


		if ((time2Pontos > time3Pontos) && (time2Pontos > time1Pontos)) then
			if (time1Pontos > time3Pontos) then
				/ 2 > 1 > 3 /
	puts ("1:"+time2.to_s+":"+time2Pontos.to_s+":"+time2QtdVitorias.to_s+":"+time2QtdEmpate.to_s+":"+time2QtdDerrotas.to_s+":"+"%.02d"%time2GolsPro.to_s+":"+"%.02d"%time2GolsContra.to_s+":"+time2Saldo.to_s)
	puts ("2:"+time1.to_s+":"+time1Pontos.to_s+":"+time1QtdVitorias.to_s+":"+time1QtdEmpate.to_s+":"+time1QtdDerrotas.to_s+":"+"%.02d"%time1GolsPro.to_s+":"+"%.02d"%time1GolsContra.to_s+":"+time1Saldo.to_s)
	puts ("3:"+time3.to_s+":"+time3Pontos.to_s+":"+time3QtdVitorias.to_s+":"+time3QtdEmpate.to_s+":"+time3QtdDerrotas.to_s+":"+"%.02d"%time3GolsPro.to_s+":"+"%.02d"%time3GolsContra.to_s+":"+time3Saldo.to_s)

			else
				/ 2 > 3 > 1/
	puts ("1:"+time2.to_s+":"+time2Pontos.to_s+":"+time2QtdVitorias.to_s+":"+time2QtdEmpate.to_s+":"+time2QtdDerrotas.to_s+":"+"%.02d"%time2GolsPro.to_s+":"+"%.02d"%time2GolsContra.to_s+":"+time2Saldo.to_s)
	puts ("2:"+time3.to_s+":"+time3Pontos.to_s+":"+time3QtdVitorias.to_s+":"+time3QtdEmpate.to_s+":"+time3QtdDerrotas.to_s+":"+"%.02d"%time3GolsPro.to_s+":"+"%.02d"%time3GolsContra.to_s+":"+time3Saldo.to_s)
	puts ("3:"+time1.to_s+":"+time1Pontos.to_s+":"+time1QtdVitorias.to_s+":"+time1QtdEmpate.to_s+":"+time1QtdDerrotas.to_s+":"+"%.02d"%time1GolsPro.to_s+":"+"%.02d"%time1GolsContra.to_s+":"+time1Saldo.to_s)
			end
		end




			if ((time3Pontos > time2Pontos) && (time3Pontos > time1Pontos)) then
				if (time1Pontos > time2Pontos) then
					/ 3 > 1 > 3/
		puts ("1:"+time3.to_s+":"+time3Pontos.to_s+":"+time3QtdVitorias.to_s+":"+time3QtdEmpate.to_s+":"+time3QtdDerrotas.to_s+":"+"%.02d"%time3GolsPro.to_s+":"+"%.02d"%time3GolsContra.to_s+":"+time3Saldo.to_s)
		puts ("2:"+time1.to_s+":"+time1Pontos.to_s+":"+time1QtdVitorias.to_s+":"+time1QtdEmpate.to_s+":"+time1QtdDerrotas.to_s+":"+"%.02d"%time1GolsPro.to_s+":"+"%.02d"%time1GolsContra.to_s+":"+time1Saldo.to_s)
		puts ("3:"+time2.to_s+":"+time2Pontos.to_s+":"+time2QtdVitorias.to_s+":"+time2QtdEmpate.to_s+":"+time2QtdDerrotas.to_s+":"+"%.02d"%time2GolsPro.to_s+":"+"%.02d"%time2GolsContra.to_s+":"+time2Saldo.to_s)
				else
					/ 3 > 2 > 1/
		puts ("1:"+time3.to_s+":"+time3Pontos.to_s+":"+time3QtdVitorias.to_s+":"+time3QtdEmpate.to_s+":"+time3QtdDerrotas.to_s+":"+"%.02d"%time3GolsPro.to_s+":"+"%.02d"%time3GolsContra.to_s+":"+time3Saldo.to_s)
		puts ("2:"+time2.to_s+":"+time2Pontos.to_s+":"+time2QtdVitorias.to_s+":"+time2QtdEmpate.to_s+":"+time2QtdDerrotas.to_s+":"+"%.02d"%time2GolsPro.to_s+":"+"%.02d"%time2GolsContra.to_s+":"+time2Saldo.to_s)
		puts ("3:"+time1.to_s+":"+time1Pontos.to_s+":"+time1QtdVitorias.to_s+":"+time1QtdEmpate.to_s+":"+time1QtdDerrotas.to_s+":"+"%.02d"%time1GolsPro.to_s+":"+"%.02d"%time1GolsContra.to_s+":"+time1Saldo.to_s)
				end
			end

	else

			
			
			/ 
				EMPATE
			time1 e time2  
			if (time1Pontos == time2Pontos) then
				 se nao tiver dado empate no confronto direto 
				if (time1golsPartida1 != time2golsPartida1)
					 time1 ganhou 
					if (time1golsPartida1 > time2golsPartida1) then
						
					end

					elsif (time1Saldo != time2Saldo) then
						

						elsif (time1GolsPro != time2GolsPro) then

							
							elsif (time1GolsContra != time2GolsPro) then 
								
							
				end
			end/
end

