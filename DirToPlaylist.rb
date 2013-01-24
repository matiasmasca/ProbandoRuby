#Build your own playlist. For this to work, you need to have some music ripped to your computer in some format. We’ve ripped
#a 100 or so CDs, and we keep them in directories something like music/genre/artist_and_cd_name/track_number.ogg. (I’m partial
#to the .ogg format, though this would work just as well with .mp3s
#or whatever you use.)
#Building a playlist is easy. It’s just a regular text file (no YAML required, even). Each line is a filename, like this:
#music/world/Stereolab--Margarine_Eclipse/track05.ogg
#What makes it a playlist? Well, you have to give the file the .m3u extension, like playlist.m3u or something. And that’s all a playlist
#is: a text file with an .m3u extension.
#So, have your program search for various music files and build you a playlist. Use your shuffle method on page 90 to mix up your
#playlist. Then check it out in your favorite music player (Winamp, MPlayer, and so on)!

#Leer los mp3 de un Directorio y hacer una lista de reproducción llamada rbListaDeReproduccion.m3u


def guadararchivo listado, filename
	File.open filename, 'w' do |f|
		f.write listado
	end
	
end

def cargar_archivo filename
	archivo = File.read filename
end

def generar_listado directorio
	Dir.chdir directorio.to_s
	carpeta = Dir['*.mp3']
 	listado_final = ''
 	carpeta.each do |tema|
 		listado_final =  listado_final + "#{directorio}\\#{tema}\n"
 	end
 	return listado_final
end

puts 'Indique la carpeta donde estan los mp3'
directorio = gets.chomp

#Crear lista.
#... aca obtener el nombre de la carpeta de trabajo. sin el chorizo de direccion.
nombre_carpeta = directorio.split '\\'
listado = generar_listado directorio
nombre_lista = "rbLista_#{nombre_carpeta.last}.m3u"
guadararchivo listado, nombre_lista

