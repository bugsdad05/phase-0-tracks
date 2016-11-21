def block_method
	puts "Good morning! I haven't run the block yet"
	name_1 = "Jolene"
	name_2 = "Butters"
	yield(name_1, name_2)
end

block_method { |name_1, name_2| puts "So great to see you, #{name_1} and #{name_2}! I just ran the block"}