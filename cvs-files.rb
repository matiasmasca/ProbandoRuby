#Probando archivos CVS
require 'csv' #importar libreria.

#Abrir para escritura...
writer = CSV.open('test.csv', 'w')
writer << [1, 5.3, 'dawn']
writer << [2, 5.5, 'paul']
writer.close

#En Bloque es mejor. El cierre es automatico.
CSV.open("test.csv" , 'w' ) do | writer |
	writer << ['sophie' , 9, 75.0]
	writer << ['brian' , 46, 175.4]
end


puts ""
puts "lectura: \n"
#Abrir para lectura
