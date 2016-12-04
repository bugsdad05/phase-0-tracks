# Assignment 6.4 *Modules*

#Rel 1 - define a 'Shout module'

module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yell_happily(words)
		words + "!!!" + " :)"
	end
end


# Rel 3

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end
  
  def yell_happily(words)
  	words + "!!!" + " :)"
  end
end

class Adult
	include Shout
end

class Baby
	include Shout
end

# Driver code
new_adult = Adult.new
new_baby = Baby.new

p new_adult.yell_happily("Yay")
p new_baby.yell_angrily("Wahhh")