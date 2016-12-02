class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  # Define speak method
  def speak(barks)
  	barks = barks.to_i
  	puts "Woof!"*barks
  	barks
  end

  # Define roll_over method
  def roll_over
  	puts "rolls over"
  end	

end

# Driver Code
# Initialize a new instance of "Puppy" called 'duchess'
duchess = Puppy.new
toy = "bone"
p duchess.fetch(toy)
p duchess.speak(5)
p duchess.roll_over


