class Puppy

  # Define initialize method
  def initialize()
  	puts "Initializing a new puppy instance ..."
  end

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
  def roll_over()
  	puts "rolls over"
  end

  # Define dog_years method
  def dog_years(hy)
  	hy = hy.to_i
  	dy = hy * 7
  	dy
  end

  # Define play_dead method
  def play_dead()
  	puts "Ok, ok...I'm dead!"  	
  end

end

# Driver Code for "Puppy" class

duchess = Puppy.new
p duchess.fetch("bone")
p duchess.speak(5)
p duchess.roll_over
p duchess.dog_years(9)
p duchess.play_dead


# Implementing a new class
class Christmas_songs

  # Define initialize method
  def initialize()
  	puts "Initializing a new puppy instance ..."
  end

  # Define "sing" method
  def sing
  	puts "fa la la la la, la la la la"  	
  end

  # Define "please" method
  def please
  	puts "Please stop already!!!"
  end

end


