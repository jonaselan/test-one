n1B1 = gets.to_f
n2B1 = gets.to_f

p1B1 = gets.to_i
p2B1 = gets.to_i

pBimestre = (((n1B1*p1B1.to_f) + (n2B1*p2B1.to_f))/(p1B1.to_f + p2B1.to_f))

n1B2 = gets.to_f
n2B2 = gets.to_f

p1B2 = gets.to_i
p2B2 = gets.to_i

sBimestre = (((n1B2*p1B2.to_f) + (n2B2*p2B2.to_f))/(p1B2.to_f + p2B2.to_f))

mParcial = ((2*pBimestre) + (3*sBimestre))/5

if ((mParcial >= 2) && (mParcial <= 6)) then
	/ RECUPERAÇÃO /
	nRecuperacao = gets.to_f
	mfd = (mParcial + nRecuperacao)/2

	if ((mfd < 6)) then
	/ REPROVADO /
	puts ("%.1f"%pBimestre +":"+ "%.1f"%sBimestre+":"+"%.1f" %nRecuperacao+":"+"%.1f"%mfd+":REPROVADO" ) 	
	else
	/ APROVADO /
	puts ("%.1f"%pBimestre +":"+ "%.1f"%sBimestre+":"+"%.1f" %nRecuperacao+":"+"%.1f"%mfd+":APROVADO" ) 	
	end

elsif (mParcial < 2) then
	/ REPROVADO / 
	puts ("%.1f"%pBimestre +":"+ "%.1f"%sBimestre+":-:"+ "%.1f"%mParcial+":REPROVADO" ) 

else
	/ APROVADO /
	puts ("%.1f"%pBimestre +":"+ "%.1f"%sBimestre+":-:"+ "%.1f"%mParcial+":APROVADO" ) 
end