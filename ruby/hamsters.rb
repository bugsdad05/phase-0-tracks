#Hamster Check in Checklist

p "Hamster's Name"
hamster_name = gets.chomp

p "On a scale of 1-10, How loud is this hamster?"
hamster_vol = gets.chomp
hamster_vol.to_i

p "What is this hamster's fur color?"
hamster_fur = gets.chomp

p "This hamster a good candidate for adoption? (True/False)"
adoptable = gets.chomp

p "Estimated age (In Earth years)"
hamster_age = gets.chomp

puts "Hamster's name of Record is #{hamster_name}"
puts "Hamster's Volume level at check in is #{hamster_vol}"
puts "Hamster's Color of Record is #{hamster_fur}"
puts "Hamster is a good candidate for adoption (True/ False) #{adoptable}"
puts "Hamster's Estimated age (in Earth years) #{hamster_age}"