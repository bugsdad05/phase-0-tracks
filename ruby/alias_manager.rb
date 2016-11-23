#
#a method for eliminating cap letters and reversing 'name'
def name_faker(name)
	name = name.downcase!.split(' ').reverse!.join(' ')

#a method for advancing vowels
  vowels = ["a", "e", "i", "o", "u"]
  name = name.split('')
  name_new = name.map do |char|
    if vowels.include?(char)
      vowels.rotate(1)[vowels.index(char)]
    else
      char
    end
  end
  name_new = name_new.join

#a method for advancing consonants
  consonants = %w(b c d f g h j k l m n p q r s t v w x y z)
  str = name_new.split('')
  str_new = str.map do |char|
    if consonants.include?(char)
      consonants.rotate(1)[consonants.index(char)]
    else
      char
    end
  end
  str_new = str_new.join.split.map(&:capitalize).join(' ')
end

#driver code
collection = {}
puts "Enter a name. (letters and spaces only, either case) or 'Q' to end program"
while user_input = gets.chomp.upcase!
  case user_input
  when "Q"
    puts "Thanks for using the Name Classifier 5000!"
    p collection
    break
  else
    encrypt_name = name_faker(user_input)
  end
  collection[user_input] = encrypt_name
end