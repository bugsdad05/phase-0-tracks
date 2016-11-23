 #pseudocode and write a method that takes a spy's real name (e.g., "Felicia Torres") 
#and creates a fake name with it by doing the following:

#Swapping the first and last name.

#Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', 
#and all of the consonants (everything else besides the vowels) to the next 
#consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' 
#would become 'f'.

#If you get really and truly stuck, just write an alias method that loops 
#through the original name and changes the letters somehow, without worrying 
#about implementing this particular algorithm. It's really not worth stressing about. 
#Simply attempting the algorithm will help you improve, even if you didn't quite get there.

#This is the most complex algorithm you've had to write, and the toughest release 
#of this challenge. How will you break it down into manageable pieces? 
#Try to identify all of the mini-challenges and considerations that show up 
#in your algorithm, such as:

#When will it be helpful to convert the string to an array to work with it more easily?
#How will you figure out whether a letter is a vowel?
#How will you deal with the fact that some letters are uppercase?
#How will you handle edge cases?

#You may find it helpful to write additional methods -- one for each job -- 
#and then combine them. It's less overwhelming, for instance, to start converting 
#your algorithm to code by writing a next_vowel method that takes a vowel character 
#and returns the next vowel character. Once you know that small piece works 
#because you've tested it with a few different vowels, you can use it in your 
#program and trust that it's unlikely to be the source of any bugs that come up. 
#This is a great way to make steady progress.

#If you do successfully implement the algorithm, "Felicia Torres" will become 
#{}"Vussit Gimodoe", which is a rather odd name. Luckily, our dearest Vussit is 
#from a country no one has ever heard of, mainly because it doesn't really exist.


##Step - Swap 1st and last names
##Step - Get rid of any upper case letters
##Step - Identify all vowels
##Step - Advance all vowels
##Step - Identify all consonants
##Step - Advance all consonants
##Step - Driver code/ User interface
##Step - Store the Alias matched with real names

##a method for eliminating cap letters and reversing 'name'
#def name_reverse(name)
#	name.downcase!.split(' ').reverse!.join(' ')
#end
#
##a method for advancing vowels
#def vowel_adv(str)
#  vowels = ["a", "e", "i", "o", "u"]
#  str = str.split('')
#  str_new = str.map do |char|
#    if vowels.include?(char)
#      vowels.rotate(1)[vowels.index(char)]
#    else
#      char
#    end
#  end
#  str_new.join
#end
##Test call- vowel_adv "aeiou"
#
#
##a method for advancing consonants
#def consonant_adv(str)
#  consonants = %w(b c d f g h j k l m n p q r s t v w x y z)
#  str = str.split('')
#  str_new = str.map do |char|
#    if consonants.include?(char)
#      consonants.rotate(1)[consonants.index(char)]
#    else
#      char
#    end
#  end
#  str_new.join
#end
##Test call- consonant_adv "bhgt"
#
##a method for splitting 'name' into first name
#def first_name
#    if name.split.count > 1
#      name.split[0..-2].join(' ')
#    else
#      name
#    end
# end
#
##a method for splitting 'name' into last name
#def last_name
#    if name.split.count > 1
#      name.split.last
#    end
#end
#
##a method for eliminating cap letters and reversing 'name'
#def name_reverse(name)
#	name.downcase!.split(' ').reverse!.join(' ')
#end
#
#  #Test call- first_name "John Morgan Smith"
#  #Test call- last_name "John Latitude Smith"
#  #Test call- name_reverse "John Q P Adams"
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
  str_new.join
end

p name_faker("Felicia Torres")