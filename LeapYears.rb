#Leap years. 
#Write a program that asks for a starting year and an
#ending year and then puts all the leap years between them (and
#including them, if they are also leap years). Leap years are years
#divisible by 4 (like 1984 and 2004). However, years divisible by
#100 are not leap years (such as 1800 and 1900) unless they are
#also divisible by 400 (such as 1600 and 2000, which were in fact
#leap years). What a mess!

puts 'A continuacion ingrese el aNio inicial, por favor:'
sAnoIncio = gets.chomp
iAnoActual = sAnoIncio.to_i
esBiciesto = false
puts 'A continuacion ingrese el aNio final, por favor:'
sAnoFin = gets.chomp

puts 'Los annios biciestos son: '
while iAnoActual.to_i <= sAnoFin.to_i
	if iAnoActual%100 == 0 && iAnoActual%100 == 400
		esBiciesto = true
	end
	
	if iAnoActual%4 == 0
		#divisible por 4.
		esBiciesto = true
	else
		esBiciesto = false
	end

	if esBiciesto == true
  		puts iAnoActual.to_s
	end
	iAnoActual = iAnoActual + 1
	esBiciesto = false
end
