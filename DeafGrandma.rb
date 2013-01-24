#Deaf grandma. 
#Whatever you say to Grandma (whatever you type in), she should respond with this:
#HUH?! SPEAK UP, SONNY!
#unless you shout it (type in all capitals). If you shout, she can hear you (or at least she thinks so) and yells back:
#NO, NOT SINCE 1938!
#To make your program really believable, have Grandma shout a different year each time, maybe any year at random between 1930
#and 1950. (This part is optional and would be much easier if you read the section on Ruby’s random number generator on page 38.)
#You can’t stop talking to Grandma until you shout BYE.
#Hint 1: Don’t forget about chomp! 'BYE' with an Enter at the end is not the same as 'BYE' without one!
#Hint 2: Try to think about what parts of your program should happen over and over again. All of those should be in your while Loop.

#Deaf grandma extended. 
#What if Grandma doesn’t want you to leave? When you shout BYE, she could pretend not to hear you.
#Change your previous program so that you have to shout BYE three times in a row. Make sure to test your program: if you shout
#BYE three times but not in a row, you should still be talking to Grandma.
sRespuesta = '' 
puts 'Hello son, how are you?'
while sRespuesta.chomp != 'BYE' 
	sRespuesta = gets.chomp
	#puts 'Me: ' + sRespuesta
	#puts 'Me up: ' + sRespuesta.upcase
	if sRespuesta != sRespuesta.upcase
		puts 'Grandma: -HUH?! SPEAK UP, SONNY!'
	else
	 	puts 'Me: -' + sRespuesta
	 	#1930 a 1950
	 	randomYear = 1000 + 900 + (30 + (10 * rand(2))) + rand(11)
	 	puts 'Grandma: -NO, NOT SINCE ' + randomYear.to_s + '!'
	end
end
puts 'Godbye son, have good day'