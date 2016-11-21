def block_method
	puts "Good morning!"
	name_1 = "Jolene"
	name_2 = "Butters"
	yield(name_1, name_2)
end

block_method { |name_1, name_2| puts "So great to see you, #{name_1} and #{name_2}!"}