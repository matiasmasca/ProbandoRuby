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

def NumeroARomanos sNumero
	if sNumero < 1 || sNumero > 3000
		puts 'Error de Parametro'
		return nil
	end
	sResultado = ''
	iCuantosMiles = 0
	iCuantasCentenas = 0
	iCuantasDecenas = 0
	iCuantasUnidades = 0
	#Cuantos Miles.
	iCuantosMiles = sNumero.to_i / 1000
	sNumero = sNumero.to_i - (iCuantosMiles * 1000)
	(iCuantosMiles).to_i.times do
			sResultado = sResultado + 'M'
	end
	
	#Cuantas Centenas
	iCuantasCentenas = sNumero.to_i / 100
	sNumero = sNumero - (iCuantasCentenas * 100)
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
	iCuantasDecenas = sNumero.to_i / 10
	sNumero = sNumero - (iCuantasDecenas * 10)
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
	iCuantasUnidades = sNumero.to_i 
	#Si el numero es menor que 5 agregar IIII. 
	#Si es 5 Agregar V 
	#Si es mayor que 5 pero menor que 9 agregar VIIII
	if iCuantasUnidades < 5
		(iCuantasUnidades).to_i.times do
			sResultado = sResultado + 'I'
		end
	elsif iCuantasUnidades == 5
			sResultado = sResultado + 'V'
	elsif iCuantasUnidades > 5 && iCuantasUnidades <= 9
			sResultado = sResultado + 'V'
			(iCuantasUnidades - 5).to_i.times do
				sResultado = sResultado + 'I'
			end
	end 
	return sResultado
end

sResultadoMetodo = NumeroARomanos 2 #devuelve II?
puts 'Devolvio:' + sResultadoMetodo.to_s 
sResultadoMetodo = NumeroARomanos 4 #devuelve IIII?
puts 'Devolvio:' + sResultadoMetodo.to_s 
sResultadoMetodo = NumeroARomanos 5 #devuelve V?
puts 'Devolvio:' + sResultadoMetodo.to_s 
sResultadoMetodo = NumeroARomanos 9 #devuelve VIIII?
puts 'Devolvio:' + sResultadoMetodo.to_s 

sResultadoMetodo = NumeroARomanos 10 #devuelve X?
puts 'Devolvio:' + sResultadoMetodo.to_s 
sResultadoMetodo = NumeroARomanos 11 #devuelve XI?
puts 'Devolvio:' + sResultadoMetodo.to_s 
sResultadoMetodo = NumeroARomanos 50 #devuelve L?
puts 'Devolvio:' + sResultadoMetodo.to_s 
sResultadoMetodo = NumeroARomanos 90 #devuelve LXXX?
puts 'Devolvio:' + sResultadoMetodo.to_s 
sResultadoMetodo = NumeroARomanos 100 #devuelve C?
puts 'Devolvio:' + sResultadoMetodo.to_s 
sResultadoMetodo = NumeroARomanos 400 #devuelve CCCC?
puts 'Devolvio:' + sResultadoMetodo.to_s 
sResultadoMetodo = NumeroARomanos 500 #devuelve D?
puts 'Devolvio:' + sResultadoMetodo.to_s 
sResultadoMetodo = NumeroARomanos 700 #devuelve DCC?
puts 'Devolvio:' + sResultadoMetodo.to_s 
sResultadoMetodo = NumeroARomanos 1000 #devuelve DCC?
puts 'Devolvio:' + sResultadoMetodo.to_s 
sResultadoMetodo = NumeroARomanos 1981 #devuelve MDCCCCLXXXI?
puts 'Devolvio:' + sResultadoMetodo.to_s 

sResultadoMetodo = NumeroARomanos 0.5 #devuelve MDCCCCLXXXI?
puts 'Devolvio:' + sResultadoMetodo.to_s 

sResultadoMetodo = NumeroARomanos 3001 #devuelve MDCCCCLXXXI?
puts 'Devolvio:' + sResultadoMetodo.to_s 

