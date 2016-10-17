#Create an "encrypt" method

#Create/ initialize an index variable,
index = 0

#Store a string
secret_password = "bubbles"

#use .length to loop thru the string
while index < secret_password.length
  secret_password[index] = secret_password[index].next!
  index += 1
end
puts secret_password