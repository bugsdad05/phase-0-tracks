# define method encrypt
def encrypt(secret_password)
  counter = 0
  #use .length to loop thru the string
  while counter < secret_password.length
    # special case for letter z
    if secret_password[counter] == "z" 
      then secret_password[counter] = "a"
    else
     #use .next! to alter the string permanently
      secret_password[counter] = secret_password[counter].next!
    end
    counter +=1
  end
  return secret_password
end

# define method decrypt
def decrypt (encrypted_password)
  
#initialize counter and 2 variables
  counter = 0
  decrypted_password = ""
  alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz !"
  #use .length to loop thru the string and 'alphabet' to pull desired letter. Breaks with no alphabetic characters.
 while counter < encrypted_password.length
    local_letter = encrypted_password[counter]
    decrypted_letter = alphabet[alphabet.index(local_letter) -1]
    decrypted_password += decrypted_letter
    counter += 1
  end
  return decrypted_password
end

#driver code
sentence = ""
#determine to encrypt, decrypt, both, or end
while true
  puts "Enter 'E' to encrypt, 'D' to decrypt, 'T' to test, 'F' to end program"
  answer = gets.chomp.upcase!
  #end
  if answer == "F" then break end
  puts "Enter a phrase. (letters and spaces only, either case)"
  sentence = gets.chomp
  #encrypt
 	if answer == "E"
    ns = encrypt(sentence)
   #decrypt
  elsif answer == "D"
    ns = decrypt(sentence)
  #both
  else 
    ns = decrypt(encrypt(sentence))
  end
  puts ns
end