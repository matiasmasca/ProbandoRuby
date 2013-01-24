#Todo en ruby es un objeto
#puts 'Hola, como te llamas?'
#name = gets.chomp
#puts 'Tu nombre es ' + name + '? Que nombre mas encantador!'
#puts 'Encantado de conocerte, ' + name + '. :)'

#Exercises.
#1) Full name greeting. 
#Write a program that asks for a person’s first name, then middle, and then last. Finally, it should greet the
#person using their full name.

#2) Bigger, better favorite number. 
#Write a program that asks for a per-son’s favorite number. Have your program add 1 to the number,
#and then suggest the result as a bigger and better favorite number .
#(Do be tactful about it, though.)

puts 'What\'s  your name?'
FirstName = gets
puts 'What\'s your family name?'
Surname = gets
puts 'Your name is ' + FirstName + 'and your Surname is ' + Surname
puts 'Tell me' + FirstName + 'What\'s your favorite number?'
FavoriteNumber = gets
Bigger = FavoriteNumber.to_i + 1
puts 'I tinks that ' + Bigger.to_s + ' is a better favorite number' 

