def block_method
  p "Block has not run yet."
  name1 = "Bob"
  name2 = "Steve"
  yield(name1, name2)
end
block_method { |name1, name2| puts "So good to see you #{name2} and #{name1}!" }

yarn = [ 'acrylic', 'wool', 'bamboo', 'silk' ]
yarn_hash = {
  :acrylic => "worsted",
  :wool => "aran",
  :bamboo => "sport",
  :silk => "fingering"
}
p yarn
p yarn_hash

yarn.map! {|type| type.upcase}
#Returns modified array

yarn_hash.each do |type, weight|
  p "You have #{weight} size yarn in #{type} fiber."
end

p yarn
p yarn_hash

numbers_again = [ 1, 2, 25, 42, 57]
numbers_again.delete_if { |num| num < 5 }
#delete_if is danger danger will robinson! Returns modified hash
letters_hash = {
  :a => 1,
  :b => 2,
  :c => 3,
  :d => 4
}
letters_hash.delete_if { |letter, number| letter >= :b }
#also dangerous! Returns modified hash
p letters_hash
p numbers_again

numbers_again = [ 1, 2, 25, 42, 57]
numbers_again.keep_if { |num| num < 5 }
#keep_if is also danger! Returns modified hash
p numbers_again

letters_hash = {
  :a => 1,
  :b => 2,
  :c => 3,
  :d => 4
}
letters_hash.keep_if { |letter, number| letter >= :b}
#destructive keep; returns modified hash
p letters_hash

numbers_again = [ 1, 2, 25, 42, 57]
numbers_again.drop_while { |num| num < 5 }
#non-destructive; returns new array
p numbers_again

letters_hash = {
  :a => 1,
  :b => 2,
  :c => 3,
  :d => 4
}
letters_hash.has_key?(:b)
#not destructive returns boolean
p letters_hash