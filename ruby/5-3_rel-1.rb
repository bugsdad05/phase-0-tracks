letters = ["a", "b", "c", "d", "e"]

#debugging code
put "Original data:"
p letters
#iterate through the array with .each
letters.each do |letter|
	puts letter
end

puts "After .each call:"
p letters

###########

numbers = {1 => 'one', 2 => 'two', 3 => 'three'}
#iterate through the hah with .each