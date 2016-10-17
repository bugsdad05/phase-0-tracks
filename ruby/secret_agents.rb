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

#Create an "decrypt" method

def decrypt
	#get user password
	puts "type your encrypted password (lowercase only please)"
	secret_password = gets.chomp
	
	#initialize counter
	index = 0

	#use .length to loop thru the string and .next! to alter the string permanenetly
	while index < secret_password.length
	  local_letter = secret_password[index]
	  local_index = "abcdefghijklmnopqrstuvwxyz".index(local_letter)
	  new_local_index = local_index - 1
	  decrypted_letter = "abcdefghijklmnopqrstuvwxyz"[new_local_index]
	  decrypted_password = "#{decrypted_password}" + "#{decrypted_letter}"
	  index += 1
	end
	
	puts decrypted_password
end
decrypt
