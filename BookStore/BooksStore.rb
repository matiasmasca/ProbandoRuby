=begin
"Date","ISBN","Amount"
"2008-04-12","978-1-9343561-0-4",39.45
"2008-04-13","978-1-9343561-6-6",45.67
"2008-04-14","978-1-9343560-7-4",36.95
=end

class BookInStock
	attr_reader :isbn #Accessor de Lectura.
	attr_accessor :price #Accessor de Lectura-Escritura
  def initialize(isbn, price)
	@isbn = isbn
	@price = Float(price)
  end

  def mostrar_libro
	puts "ISBN: #{isbn}, price: #{price}"
  end

  def precio_en_centavos #Atributo Virtual "Uniform Access Principle" Meyer '97
	Integer(price * 100 + 0.5)
  end
  def precio_en_centavos=(cents) #Modifica el valor de price.
	@price = cents / 100.0
  end

end
#Mostrar un Objeto. Todos sus atributos con p.
#p a_book = BookInStock.new("978-1-9343561-0-4",39.45)
#p another_book = BookInStock.new("978-1-9343561-6-6",45.67)

#Crear Objetos
#b1 = BookInStock.new("isbn1", 3)
#b1.mostrar_libro
#b2 = BookInStock.new("isbn2", 3.14)
#b2.mostrar_libro
#b3 = BookInStock.new("isbn3", 5.67)
#b3.mostrar_libro

#Accediendo a los atributos del objeto con Accessors.
book = BookInStock.new("isbn4", 33.80)
puts "ISBN = #{book.isbn}"
puts "Price = #{book.price}"
book.price = book.price * 0.75 # discount price
puts "New price = #{book.price}"
puts ""

#Atributo Virtual
book = BookInStock.new("isbn5", 13.08)
puts "Price = #{book.price}"
puts "Price in cents = #{book.precio_en_centavos}"
puts 'Llamada con precio_en_centavos = 1234'
book.precio_en_centavos = 1234
puts "Mod. Price = #{book.price}"
puts "Mod. Price in cents = #{book.precio_en_centavos}"