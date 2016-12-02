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

end

# Driver Code
# Initialize a new instance of "Puppy" called 'duchess'
duchess = Puppy.new
toy = "bone"
p duchess.fetch(toy)
p duchess.speak(5)


