def say_moo number_of_moos
	puts 'mooooooo...' * number_of_moos
end

say_moo 5
puts 'oink-oink'

tough_var = 'You can\'t even touch my variable!'
def little_pest tough_var
	tough_var = 'tu mama'
	puts 'HAHA! I ruined your variable!'
	puts tough_var
end
little_pest tough_var
puts tough_var