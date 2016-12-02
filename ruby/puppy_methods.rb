class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  # Define speak method

end

# Driver Code
# Initialize a new instance of "Puppy" called 'duchess'
duchess = Puppy.new
toy = "bone"
p duchess.fetch(toy)


