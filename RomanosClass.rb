#Old-school Roman numerals. 
#In the early days of Roman numer-als, the Romans didn’t bother with any of this new-fangled sub-traction “IX” nonsense. 
#No sir, it was straight addition, biggest to littlest—so 9 was written “VIIII,” and so on. 
#Write a method that when passed an integer between 1 and 3000 (or so) returns a
#string containing the proper old-school Roman numeral. In other words, old_roman_numeral 4 should return 'IIII'. Make sure to test
#your method on a bunch of different numbers. 
#Hint: Use the inte-ger division and modulus methods on page 37.
#For reference, these are the values of the letters used:
#I = 1 V = 5 X = 10 L = 50
#C = 100 D = 500 M = 1000

#sin usar CASE.
class Integer
 def to_roman 
	if self < 1 || self > 3000
		puts 'Error de Parametro'
		return nil
	end
	sResultado = ''
	iCuantosMiles = 0
	iCuantasCentenas = 0
	iCuantasDecenas = 0
	iCuantasUnidades = self.to_i

	#Cuantos Miles.
	iCuantosMiles = iCuantasUnidades / 1000
	iCuantasUnidades = iCuantasUnidades - (iCuantosMiles * 1000)
	(iCuantosMiles).to_i.times do
			sResultado = sResultado + 'M'
	end
	
	#Cuantas Centenas
	iCuantasCentenas = iCuantasUnidades / 100
	iCuantasUnidades = iCuantasUnidades - (iCuantasCentenas * 100)
	if iCuantasCentenas < 5
		(iCuantasCentenas).to_i.times do
			sResultado = sResultado + 'C'
		end
	elsif iCuantasCentenas == 5
			sResultado = sResultado + 'D'
	elsif iCuantasCentenas > 5 && iCuantasCentenas <= 9
			sResultado = sResultado + 'D'
			(iCuantasCentenas - 5).to_i.times do
				sResultado = sResultado + 'C'
			end
	end 

	#Cuantas Decenas
	iCuantasDecenas = iCuantasUnidades / 10
	iCuantasUnidades = iCuantasUnidades - (iCuantasDecenas * 10)
	if iCuantasDecenas < 5
		(iCuantasUnidades).to_i.times do
			sResultado = sResultado + 'X'
		end
	elsif iCuantasDecenas == 5
			sResultado = sResultado + 'L'
	elsif iCuantasDecenas > 5 && iCuantasDecenas <= 9
			sResultado = sResultado + 'L'
			(iCuantasDecenas - 5).to_i.times do
				sResultado = sResultado + 'X'
			end
	end 

	#Cuantas Unidades
	#Si el numero es menor que 5 agregar IIII. 
	#Si es 5 Agregar V 
	#Si es mayor que 5 pero menor que 9 agregar VIIII
	if iCuantasUnidades < 5
		(iCuantasUnidades).times do
			sResultado = sResultado + 'I'
		end
	elsif iCuantasUnidades == 5
			sResultado = sResultado + 'V'
	elsif iCuantasUnidades > 5 && iCuantasUnidades <= 9
			sResultado = sResultado + 'V'
			(iCuantasUnidades - 5).times do
				sResultado = sResultado + 'I'
			end
	end 
	sResultado
end
end


sResultadoMetodo = 2.to_roman #devuelve II?
puts 'Devolvio:' + sResultadoMetodo.to_s 
sResultadoMetodo = 4.to_roman #devuelve IIII?
puts 'Devolvio:' + sResultadoMetodo.to_s 
sResultadoMetodo = 5.to_roman #devuelve V?
puts 'Devolvio:' + sResultadoMetodo.to_s 
sResultadoMetodo = 9.to_roman #devuelve VIIII?
puts 'Devolvio:' + sResultadoMetodo.to_s 

sResultadoMetodo =  10.to_roman #devuelve X?
puts 'Devolvio:' + sResultadoMetodo.to_s 
sResultadoMetodo =  11.to_roman #devuelve XI?
puts 'Devolvio:' + sResultadoMetodo.to_s 
sResultadoMetodo =  50.to_roman #devuelve L?
puts 'Devolvio:' + sResultadoMetodo.to_s 
sResultadoMetodo =  90.to_roman #devuelve LXXX?
puts 'Devolvio:' + sResultadoMetodo.to_s 
sResultadoMetodo =  100.to_roman #devuelve C?
puts 'Devolvio:' + sResultadoMetodo.to_s 
sResultadoMetodo =  400.to_roman #devuelve CCCC?
puts 'Devolvio:' + sResultadoMetodo.to_s 
sResultadoMetodo =  500.to_roman #devuelve D?
puts 'Devolvio:' + sResultadoMetodo.to_s 
sResultadoMetodo =  700.to_roman #devuelve DCC?
puts 'Devolvio:' + sResultadoMetodo.to_s 
sResultadoMetodo =  1000.to_roman #devuelve DCC?
puts 'Devolvio:' + sResultadoMetodo.to_s 
sResultadoMetodo =  1981.to_roman #devuelve MDCCCCLXXXI?
puts 'Devolvio:' + sResultadoMetodo.to_s 

sResultadoMetodo =  0.5.to_roman #devuelve MDCCCCLXXXI?
puts 'Devolvio:' + sResultadoMetodo.to_s 

sResultadoMetodo =  3001.to_roman #devuelve MDCCCCLXXXI?
puts 'Devolvio:' + sResultadoMetodo.to_s 

