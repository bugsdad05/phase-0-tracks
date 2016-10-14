# Onboarding Questionaire (Vampire Detection Protocols)

puts "What is your name?"
employee_name = gets.chomp

puts "How old are you?"
employee_age = gets.to_i

puts "In what year were you born?"
employee_birthyear = gets.to_i
current_year = 2016

puts "Do you like garlic bread? (Y/N)"
employee_garlic = gets.chomp

puts "Would you like to enroll in the company's health insurance program? (Y/N)"
employee_insurance = gets.chomp

employee_age_checked = current_year - employee_birthyear

if employee_age == employee_age_checked
	verified_age = true

elsif verified_age && employee_garlic 	 
	status = "Probably not a vampire"	

elsif !verified_age && (!employee_garlic || !employee_insurance) 	 
	status = "Probably a vampire"

elsif !verified_age && (employee_garlic && employee_insurance)
 	 status = "Almost certainly a vampire"

elsif employee_name == "Drake Cula" 	 
	status = "Definitely a vampire"

else
	status = "Results inconclusive"
end
p status