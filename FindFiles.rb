puts "Que extension? (si encuentra algo lo lista, sino no muestra nada)"
extension = gets.chomp
archivos = []
archivos = Dir["{*.#{extension}}"]
print "Se encontraron #{archivos.length} archivos. Estos son: "
archivos.each do |nf|
	print "#{nf}, " 
end
puts ''
puts ''

