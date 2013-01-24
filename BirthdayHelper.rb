# encoding: utf-8

#Birthday helper! 
#Write a program to read in names and birth dates from a text file. It should then ask you for a name. You type one
#in, and it tells you when that person’s next birthday will be (and, for the truly adventurous, how old they will be). The input file
#should look something like this:
#Christopher Alexander, Oct 4, 1936
#Christopher Lambert, Mar 29, 1957
#Christopher Lee, May 27, 1922
#Christopher Lloyd, Oct 22, 1938
#
#The King of Spain, Jan 5, 1938
#(That would be me Christopher Pine, not the young James T. Kirk; I don’t care when he was born.) You’ll probably want to break each
#line up and put it in a hash, using the name as your key and the date as your value. In other words: words: 
#birth_dates['The King of Spain'] = 'Jan 5, 1938'
#(You can store the date in some other format if you prefer.) Though you can do it without this tip, your program might look
#prettier if you use the each_line method for strings. It works pretty much like each does for arrays, but it returns each line of the
#multiline string one at a time (but with the line endings, so you might need to chomp them). Just thought I’d mention it....

#Leer el archivo
#Poner cada linea en una matriz
sNombreArchivo = 'AgendaAniversarios.txt'
aAgenda = {} #Nombre, Mes Dia, Annio.
archivo_agenda = File.read "D:\\Herramientas Laborales\\Ruby\\Probando Ruby\\#{sNombreArchivo}"
archivo_agenda.each_line do |linea|
	aLinea = linea.split(',')
	#Christopher Pine, Aug 3, 1976
	mes =(aLinea[1])[1, 3]
	dia = (aLinea[1])[5, 2]
	annio = aLinea[2]
	aAgenda["#{aLinea[0]}"] = Time.local(annio, mes, dia)
end



#Preguntar por un nombre
print "Que nombre/referencia quiere buscar en la Agenda: "
sRespuesta = "Matias Mascazzini" #Aniversario" #gets.chomp
encontre = ''
encontre = aAgenda["#{sRespuesta}"]
if encontre.to_s != ""
	puts "Es el: #{encontre}"
else
	puts "no entre nada con esa referencia."
	exit
end

#Mostrar cuanto falta y que edad cumplira.
fecha_actual = Time.now
#2000-01-08
anio = encontre.to_s[0, 4]
mes = encontre.to_s[5, 2]
dia = encontre.to_s[8, 2]
puts fecha_vieja = Time.local(anio, mes, dia)
#dCuantoFalta = fecha_vieja - fecha_actual
puts "Es su aniversario numero #{fecha_actual.year - fecha_vieja.year}."
puts "Pasaron #{(fecha_actual.to_i - fecha_vieja.to_i) / (60 * 60 * 24 )} dias."

puts "Pasaron #{(fecha_vieja.to_i - fecha_actual.to_i) / (60 * 60 * 24 )} dias."
