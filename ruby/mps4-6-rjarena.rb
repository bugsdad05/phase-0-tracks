# define method encrypt

def encrypt(secret_password)
  counter = 0
  while counter < secret_password.length
    # special case for letter z
    if secret_password[counter] == "z" 
      then secret_password[counter] = "a"
    else
      secret_password[counter] = secret_password[counter].next!
    end
    counter +=1
  end
  return secret_password
end

# define method decrypt

def decrypt(encrypted_password)
  counter = 0
  while counter < encrypted_password.length
    # special case for letter z
    if encrypted_password[counter] == "z" 
      then encrypted_password[counter] = "a"
    else
      encrypted_password[index] = encrypted_password[index].next!
    end
    index +=1
  end
  return encrypted_password
  
end

#driver code

sentence = ""
while true
  puts "Enter E to encrypt, D to decrypt, T to test, F to end program"
  answer = gets.chomp
  if answer == "F" then break end
  puts "enter a phrase."
  sentence = gets.chomp
  if answer == "E"
    ns = encrypt(sentence)
  elsif answer == "D"
    ns = decrypt(sentence)
  else 
    ns = encrypt(decrypt(sentence))
  end
  puts ns
end