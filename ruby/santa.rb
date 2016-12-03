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
# Declare 'Santa' class
class Santa
	# define 'initialize' method
	def initialize
		puts "Initializing a Santa instance..."
	end

	# define 'speak' method
	def speak
		puts "Ho, ho, ho! Merry Christmas and Haaaappy holidays to all!"
	end

	# define 'eat_milk_and_cookies' method
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}! may I have another?"
	end

end

# driver code
duchess = Santa.new
p duchess.speak
p duchess.eat_milk_and_cookies("snowflake cookie")
