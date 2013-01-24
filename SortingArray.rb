##Building and sorting an array.
#Write the program we talked about at the beginning of this chapter, one that asks us to type as many
#Report erratum
#Prepared exclusively for Reed Kennedy
#A FEW THINGS TO TRY 66 words as we want (one word per line, continuing until we just
#press Enter on an empty line) and then repeats the words back
#to us in alphabetical order. Make sure to test your program thor-oughly; for example, 
#does hitting Enter on an empty line always exit your program? Even on the first line? And the second? 
#Hint: There’s a lovely array method that will give you a sorted version of an array: sort. Use it!

sPalabrasIngresadas = []
sPalabraActual = ''

while true
	puts 'Para finalizar deje en blanco y presione Enter'
	puts 'Ingrese algo para agregar a la lista, por favor:'
	sPalabraActual = gets.chomp
	if sPalabraActual == '' 
		break
	end
	sPalabrasIngresadas.push sPalabraActual
	puts ''
	puts 'Ingreso correcto.'
	puts ''
	puts ''
end
puts sPalabrasIngresadas.sort