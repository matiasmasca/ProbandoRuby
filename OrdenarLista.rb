

listaDesordenada = ['herrero','nudillos','abrigo','canal','meteorito','roto','publicidad']
listaOrdenada = []

tope = listaDesordenada.length
menor = 0
tope.times do |i|
	tope.times do |j|
		puts i.to_s + '  j:' + j.to_s
		if (listaDesordenada[i]) < (listaDesordenada[j])
			menor = i
		end 
	
	end
		elementoActual = listaDesordenada[i].to_s
		elementoMenor = listaDesordenada[menor].to_s
    	listaDesordenada.insert(i, elementoMenor.to_s) 
    	listaDesordenada.insert(menor, elementoActual.to_s)
		
end 	

puts listaDesordenada
puts ''
puts ''
# puts listaOrdenada