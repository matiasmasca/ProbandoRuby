# Comentario con #
# puts para imprimir algo.
puts 'Hola Mundo! en Ruby'
puts "Hola Mundo!" + " en Ruby."
puts 'Hola ' * 4

puts self
puts "hola mundo".center(50)

puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'
if name == 'Matias'
puts 'What a lovely name!'
end


#Bloque Comentario Multilinea
=begin
aca va un comentario multilinea...
...y que continua aqui
y aqui...


y aqui...
=end