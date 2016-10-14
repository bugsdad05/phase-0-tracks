# Onboarding Questionaire (Vampire Detection Protocols)

puts "How many employees will be added?"
added_employees = gets.to_i

while 
	added_employees > 0

puts "What is your name?"
employee_name = gets.chomp

puts "How old are you?"
employee_age = gets.to_i

puts "In what year were you born?"
employee_birthyear = gets.to_i
current_year = 2016

puts "Do you like garlic bread? (Y/N)"
employee_garlic = gets.chomp
employee_garlic.to_s == 'y' ? true : false

puts "Would you like to enroll in the company's health insurance program? (Y/N)"
employee_insurance = gets.chomp
employee_insurance.to_s == 'y' ? true : false

employee_age_checked = current_year - employee_birthyear

if employee_age == employee_age_checked
	verified_age = true
else verified_age = false
end

if (verified_age && employee_garlic)
	status = "Probably not a vampire"

elsif !(verified_age && employee_garlic && employee_insurance)
	status = "Almost certainly a vampire"

elsif !(verified_age && (employee_garlic || employee_insurance))	 
	status = "Probably a vampire"
	
#elsif employee_name == "Drake Cula" || “Tu Fang”
	status = "Definitely a vampire"
	
else
	status = "Results inconclusive"
end

puts status

added_employees = added_employees - 1
end