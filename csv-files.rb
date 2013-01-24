#Probando archivos CSV
require 'csv' #importar libreria.

#Abrir para escritura...
writer = CSV.open('test.csv', 'w')
writer << [1, 5.3, 'dawn']
writer << [2, 5.5, 'paul']
writer.close

#En Bloque es mejor. El cierre es automatico.
CSV.open("test.csv" , 'w' ) do | writer |
	writer << [9, 75.0, 'sophie']
	writer << [46, 175.4, 'brian']
end


puts ""
puts "lectura: \n"
#Abrir para lectura
s = CSV.readlines('test.csv')
s.collect do | row |
	puts "#{[row[0].to_i, row[1].to_f, row[2]]}"
end


#dirección de correo electrónico,alias,estado del grupo,estado del correo electrónico,
#preferencias del correo electrónico,permisos de publicación,año de incorporación,mes de incorporación,día de incorporación,hora de incorporación,minuto de incorporación,segundo de incorporación
#Abrir para lectura
h = {}
libreta = CSV.readlines('libreta.csv')
libreta.collect do | row |
	#puts "#{[row[0], row[1], row[2]]}"
	h = { :correo => row[0], 
		  :alias => row[1].to_s,
		  :estado_grupo => row[2],
		  :estado_correo => row[3],
		  :preferencias_correo => row[4],
		  :permisos => row[5],
		  :annio_ingreso => row[6],
		  :mes_ingreso => row[7]
		}

end

puts h 

