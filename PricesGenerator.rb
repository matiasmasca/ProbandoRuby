#Generador de Precios
#Versión 1 en Ruby
#Todo sin acentos ni caracteres non UTF-8, aun no le encuentro la vuelta a eso.

class GeneradorPrecios
	attr_accessor :valorDolar #Gracias Lea!
   	attr_accessor :montoIVA 
   	attr_accessor :cotizarDolar 
   	attr_accessor :margen 
   	attr_accessor :precioFinal

	def initialize
	 	@valorDolar = 0.00
   		@montoIVA = 0.00
   		@cotizarDolar = 0.00
   		@margen = 0
   		@precioFinal = 0.00
	end

	def generar 
		((@valorDolar+(@valorDolar*@montoIVA/100))*@cotizarDolar) + (((@valorDolar+(@valorDolar*@montoIVA/100))*@cotizarDolar)*@margen/100)
	end

	#/*Precio con IVA */
	def get_PrecioConIva
		@valorDolar+(@valorDolar*@montoIVA/100) #Sin Variables extras... Gracias LEa!!
	end

	#/*Valor a depocitar */
	def get_ValorADepositar
		(@valorDolar+(@valorDolar*@montoIVA/100))*@cotizarDolar
	end
		
end


#Probando la clase...
precio_articulo = GeneradorPrecios.new

respuestas = [""]
print 'Ingrese el valor del producto en Dolares: '
respuestas[0] = gets.chomp
print 'Ingrese el valor del IVA (21, 10.5. etc): '
respuestas[1] = gets.chomp
print 'Ingrese la cotizacion del Dolar para la compra: '
respuestas[2] = gets.chomp
print 'Que margen de ganancia quiere aplicarle: '
respuestas[3] = gets.chomp

#validaciones.
# Tarea para el hogar...

#Asignarvalores al objeto.
	precio_articulo.valorDolar =respuestas[0].to_f
   	precio_articulo.montoIVA =respuestas[1].to_f
   	precio_articulo.cotizarDolar =respuestas[2].to_f
    precio_articulo.margen =respuestas[3].to_f
   	precio_articulo.precioFinal=respuestas[4].to_f

#Mostrar Resultados
puts ''
puts '=============================================='
puts "Precio Costo: u$s #{precio_articulo.valorDolar}"
puts "Precio con IVA: u$s #{precio_articulo.get_PrecioConIva}"
puts "Depositar Pesos: $#{precio_articulo.get_ValorADepositar}"
puts "Con un margen de #{precio_articulo.margen}% el Precio de Venta debe ser: $#{precio_articulo.generar}"
puts ''
