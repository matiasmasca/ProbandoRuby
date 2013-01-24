#Canción de los Elefantes.
#Escribir un programa que muestre la letra de la canción de los 2 elefantes.
#Se escribe veía y araño... pero hasta que sepa como meter un non US-ASCII va veia y arania

elefantes = 1
puts(elefantes.to_s + " elefante se balanceaba")
puts("sobre la tela de una arania")
puts("y como veia que resistia")
puts("fue a llamar a otro elefante.")
puts("")

while true
	elefantes = elefantes + 1 
	puts(elefantes.to_s + " elefantes se balanceaban")
	puts("sobre la tela de una arania")
	puts("")
	
	puts "Se rompio la tela?"
	respuesta = gets.chomp
	if respuesta == 'si'
		puts 'Ouch!'
		break
	end
	puts("y como veian que resistian")
	puts("fueron a llamar a otro elefante.")
	puts("")
end

