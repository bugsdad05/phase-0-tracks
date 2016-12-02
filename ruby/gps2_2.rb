#GPS 2.2
#Paired with ?????????

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:

  # define the method
  def create_list(items_string)
    temp_array = items_string.split(' ')
    list = Hash.new
    temp_array.each do |item|
		list[item] = 1    	
    end
    print list
    list
  end

 #test code

 test_string = "bannana orange lettuce milk"
 create_list (test_string)
  # input is string, needs to be hash
  # convert to intermediate array - " now's  the time".split(' ') - will split using spaces as deliminator, returns array
  # iterate through array and push to new hash, assigning a default value to each key - a.each {|x| print x, " -- " }
  
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?] Use a hash carrots=> 1, bannana => 1, milk => 2

# Method to add an item to a list
# input: item name and optional quantity
# steps:
# output:

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output: