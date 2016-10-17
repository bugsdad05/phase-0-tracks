#Create an "encrypt" method

def encrypt
	#get user password
	puts "type your password (lowercase only please)"
	secret_password = gets.chomp
	#initialize counter
	index = 0
	#use .length to loop thru the string and .next! to alter the string permanenetly
	while index < secret_password.length
	  secret_password[index] = secret_password[index].next!
	  index += 1
	end
	puts secret_password
end

encrypt