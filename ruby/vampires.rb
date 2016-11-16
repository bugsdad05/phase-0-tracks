# Onboarding Questionaire (Vampire Detection Protocols Rev 4.4f)

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
	case employee_garlic
		when 'y', 'Y', 'yes'
			employee_garlic = true
		when 'n', 'N', 'no'
			employee_garlic = false
	end
	#employee_garlic.to_s == 'y' ? true : false

	puts "Would you like to enroll in the company's health insurance program? (Y/N)"
	employee_insurance = gets.chomp
	case employee_insurance
		when 'y', 'Y', 'yes'
			employee_insurance = true
		when 'n', 'N', 'no'
			employee_insurance = false
	end

	puts "List any alergies? Enter 'done' when finished"
		employee_allergies = gets.chomp.to_s
	
	while employee_allergies != "done"		
		if employee_allergies == "sunshine"
			status = "Probably a vampire"
			employee_allergies = "done"
		else
			puts "Any other alergies? Enter 'done' when finished"
			employee_allergies = gets.chomp.to_s
		end
	end
			
	#employee_insurance.to_s == 'y' ? true : false

	employee_age_checked = current_year - employee_birthyear

	if employee_age == employee_age_checked
		verified_age = true
	else verified_age = false
	end

	if status == "Probably a vampire"
		puts status
	elsif 				
		employee_name.to_s == "Drake Cula" || employee_name.to_s == "Tu Fang"
		status = "Definitely a vampire"
	elsif 
		(verified_age && employee_garlic)
		status = "Probably not a vampire"
	elsif
		!(verified_age && employee_garlic) || !(verified_age && employee_insurance)
		status = "Probably a vampire"
	elsif
		(!(verified_age) && !(employee_garlic) && !(employee_insurance))
		status = "Almost certainly a vampire"
	else
		status = "Results inconclusive"
	end
	puts status
	added_employees = added_employees - 1
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
