
class Die 
	def roll #Tirar los datos
		@number_showing = 1 + rand(5)
	end

	def showing
		@number_showing
	end

end

# Creamos un par de datos
dice = [Die.new, Die.new]
# ...y los tiramos...
dice.each do |die|
	die.roll
	puts die.showing
end


die = Die.new
die.roll
puts die.showing
die.roll
puts die.showing
puts die.showing
puts die.showing
die2 = Die.new
die2.roll
puts die2.showing
puts die.showing