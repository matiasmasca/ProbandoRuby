
class Die 
	def initialize
		# I'll just roll the die, though we could do something else
		# if we wanted to, such as setting the die to have 6 showing.
		roll
	end
	def roll #Tirar los datos
		@number_showing = 1 + rand(5)
	end

	def showing
		@number_showing
	end

	def cheat #trucar el dado
		@number_showing = 1+ rand(2)
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
die2.cheat
puts die2.showing
puts die.showing

puts Die.new.showing #devulve Nil si no hay initialize en la clase