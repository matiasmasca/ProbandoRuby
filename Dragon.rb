
class Dragon
	def initialize name
		@name = name
		@asleep = false
		@stuff_in_belly = 10 # He's full.
		@stuff_in_intestine = 0 # He doesn't need to go.
		puts "#{@name} is born."
	end
	
	def feed
		puts "You feed #{@name}."
		@stuff_in_belly = 10
		passage_of_time
	end
	def walk
		puts "You walk #{@name}."
		@stuff_in_intestine = 0
		passage_of_time
	end

 def put_to_bed
	puts "You put #{@name} to bed."
	@asleep = true
	3.times do
		if @asleep
		passage_of_time
		end
		if @asleep
		puts "#{@name} snores, filling the room with smoke."
		end
	end
	if @asleep
		@asleep = false
		puts "#{@name} wakes up slowly."
	end
 end
 def toss
	puts "You toss #{@name} up into the air."
	puts 'He giggles, which singes your eyebrows.'
	passage_of_time
 end
 def rock
	puts "You rock #{@name} gently."
	@asleep = true
	puts 'He briefly dozes off...'
	passage_of_time
	if @asleep
	@asleep = false
	puts '...but wakes when you stop.'
	end
 end

 private
# "private" means that the methods defined here are
# methods internal to the object. (You can feed your
# dragon, but you can't ask him whether he's hungry.)
 def hungry?
		# Method names can end with "?".
		# Usually, we do this only if the method
		# returns true or false, like this:
		@stuff_in_belly <= 2
 end
 def poopy?
	@stuff_in_intestine >= 8
 end
 	def passage_of_time
		if @stuff_in_belly > 0
		# Move food from belly to intestine.
		@stuff_in_belly = @stuff_in_belly - 1
		@stuff_in_intestine = @stuff_in_intestine + 1
		else # Our dragon is starving!
		if @asleep
			@asleep = false
			puts 'He wakes up suddenly!'
		end
		puts "#{@name} is starving! In desperation, he ate YOU!"
		exit # This quits the program.
		end
		if @stuff_in_intestine >= 10
			@stuff_in_intestine = 0
			puts "Whoops! #{@name} had an accident..."
		end
		if hungry?
		if @asleep
			@asleep = false
			puts 'He wakes up suddenly!'
		end
		puts "#{@name}'s stomach grumbles..."
		end
		if poopy?
			if @asleep
				@asleep = false
				puts 'He wakes up suddenly!'
			end
			puts "#{@name} does the potty dance..."
		end
	end
end

#Probemos la clase
#pet = Dragon.new 'Draco'
#pet.feed
#pet.toss
#pet.walk
#pet.put_to_bed
#pet.rock
#pet.put_to_bed
#pet.put_to_bed
#pet.put_to_bed
#pet.put_to_bed

#UPDATE. Interactive baby dragon. 
#Write a program that lets you enter com-mands such as feed and walk and calls those methods on your
#dragon. Of course, since you are inputting just strings, you will
#need some sort of method dispatch, where your program checks
#which string was entered and then calls the appropriate method.
class Pantalla
	def initialize
		@pet = Dragon.new 'Dragoncito'
	end
	def mostrar_menu
		puts ('==============================================================')
		line_width = 30
		puts('Menu of Your Dragon'.center(line_width))
		puts('')
		puts('==============================================================')
		puts('Crear Dragon:'.ljust(line_width/2) + 'presione la tecla 1 y luego enter'.ljust(line_width/2)  + 'creara un nuevo dragon'.ljust(line_width/2))
		puts('Feed:'.ljust(line_width/2) + 'presione la tecla 2 y luego enter'.ljust(line_width/2)  + 'hara que su dragon Feed'.ljust(line_width/2))
		puts('Toss:'.ljust(line_width/2) + 'presione la tecla 3 y luego enter'.ljust(line_width/2)  + 'hara que su dragon Toss'.ljust(line_width/2))
		puts('Walk:'.ljust(line_width/2) + 'presione la tecla 4 y luego enter'.ljust(line_width/2)  + 'hara que su dragon walk'.ljust(line_width/2))
		puts('Rock:'.ljust(line_width/2) + 'presione la tecla 5 y luego enter'.ljust(line_width/2)  + 'hara que su dragon rock'.ljust(line_width/2))
		puts('Put to bed:'.ljust(line_width/2) + 'presione la tecla 6 y luego enter'.ljust(line_width/2)  + 'hara que su dragon put to bed'.ljust(line_width/2))
		puts('Exit:'.ljust(line_width/2) + 'presione cualquier tecla  y luego enter'.ljust(line_width/2)  + 'cierra el programa'.ljust(line_width/2))

	end

	def seleccion_opcion
		puts "Seleccione una opcion del menu"
		respuesta = gets.chomp
		case respuesta
		when '1'
			puts "Ingrese el nombre del Dragon: "
			@pet = Dragon.new gets.chomp
		when '2'
			@pet.feed
		when '3'
			@pet.toss
		when '4'
			@pet.walk
		when '5'
			@pet.rock
		when '6'
			@pet.put_to_bed
		else
			system('cls') #Limpiar Pantalla.
			exit
		end
			
	end
end

pantalla = Pantalla.new
while true
	pantalla.mostrar_menu
	pantalla.seleccion_opcion
end