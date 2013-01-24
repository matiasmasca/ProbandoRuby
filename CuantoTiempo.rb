# Write a program that tells you the following:
#• Hours in a year. How many hours are in a year?
#• Minutes in a decade. 
#Report erratum
#Prepared exclusively for Reed Kennedy
#A FEW THINGS TO TRY 13
#• Your age in seconds. How many seconds old are you? (I’m not
#going to check your answer, so be as accurate—or not—as you
#want.)
#*/

HoursYear = 24 * 365
puts "- How many hours are in a year?"
puts "   There are " + HoursYear.to_s + " hours."
puts "- How many minutes are in a decade?"
MinutesInADecade = (((60*24)*365)*10)
puts "   There are " + MinutesInADecade.to_s + " minutes."
puts "- How many seconds old are you?"
AgeInSeconds = (((60*60*24)*365)*31)
puts "   I am " + AgeInSeconds.to_s + " seconds old."