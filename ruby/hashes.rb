#Interior Design Client data

#Ask for user input for:
#clients name
#clients age
#clients number of children
#clients decor theme

#Convert user input to appropriate data type
#Define a hash to store collected data
form_data = {}
#Ask for user input for:
#clients name
puts "Client name?"
form_data["Client Name"] = gets.chomp
#clients age
puts "Clients age?"
form_data["Client age"] = gets.chomp
#clients number of children
puts "How many children does the client have?"
form_data["Child count"] = gets.chomp
#clients decor theme
puts "Clients design theme?"
form_data["Design theme"] = gets.chomp
#clients ability to pay
puts "Does client have the money? (Y/N)"
form_data["Money"] = gets.chomp
#Print the hash to the screen once all data has been entered
p form_data
#Provide the user the opportunityto update a key; if user enters "none"
#-skip it, if user enters  a valid key value ask for new value and update
# the hash
puts "Enter key to update? (type 'none' to exit")
update_key = gets.chomp
if update_key == "none"
	puts "Thank you"
else
	puts "Enter correction"
	form_data[update_key] = gets.chomp
	p form_data
end