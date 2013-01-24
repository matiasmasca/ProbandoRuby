#99 Bottles of Beer on the Wall
#Write a program that prints out the lyrics to that beloved classic, “99 Bottles of Beer on the Wall.”

iBottles = 99

while iBottles > 0
	puts iBottles.to_s + "bottles of beer on the wall, " + iBottles.to_s + "bottles of beer."
	iBottles = iBottles - 1
	puts ""
	puts "Take one down and pass it around, " + iBottles.to_s + " bottles of beer on the wall."
end 

puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, 99 bottles of beer on the wall."