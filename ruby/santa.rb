=begin
	
Eventually, your simulator will build thousands of Santas, but for now, 
start by defining a Santa class in phase-0-tracks/ruby/santa.rb. 
Your class should have three instance methods:

A speak method that will print "Ho, ho, ho! Haaaappy holidays!" 
(Santa has been working on being more inclusive.)
An eat_milk_and_cookies method that takes a cookie type 
(example: "snickerdoodle") as a parameter and prints 
"That was a good <type of cookie here>!" 
An initialize method that prints "Initializing Santa instance ...".
Add a bit of code below your class declaration to check that 
you're able to initialize a Santa instance and call its methods.
	
=end

# Rel 0
# Declare 'Santa' class
class Santa
	attr_accessor :age, :gender, :ethnicity
	# define 'initialize' method
	def initialize(gender, ethnicity)
		puts "Initializing a Santa instance..."
		# Rel 1
		@gender = gender
		@ethnicity = ethnicity
		@age = 0
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]		
	end

	# define 'speak' instance method
	def speak
		puts "Ho, ho, ho! Merry Christmas and Haaaappy holidays to all!"
	end

	# define 'eat_milk_and_cookies' instance method
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}! may I have another?"
	end

	# define an instance method to age Santa by one year
	def celebrate_birthday
		@age += 1
	end

	# define a method for demoting a Reindeer to the end of the array
	def get_mad_at(reindeer)
		idx = @reindeer_ranking.index(reindeer)
		if idx != nil
			@reindeer_ranking.insert(-1,@reindeer_ranking.delete_at(idx) )
		end
	end

	# define setter method for @gender
	#def gender=(gender_reassignment)
	#	@gender = gender_reassignment
	#end

	# define getter method for @age
	#def get_age
	#	@age
	#end

	# define getter method for @ethnicity
	#def get_ethinicity
	#	@ethnicity
	#end

end

# driver code Rel 0
#duchess = Santa.new
#p duchess.speak
#p duchess.eat_milk_and_cookies("snowflake cookie")

# Rel 1
# create an array of reindeer names, genders identities, ethnicities
reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
gender_choices = ["male", "female", "adjustable", "N/A", "Still working that out", "singular"]
ethnicity_choices = ["black", "white", "latino", "asian", "klingon", "formetoknowandyoutofigureout"]
# create an empty container for our santa collection
santas = []
# build a santa collection
gender_choices.length.times do |i|
	santas << Santa.new(gender_choices[i], ethnicity_choices[i])
	puts santas
end

santas[2].get_mad_at("Dasher")
santas[2].gender = "male"


