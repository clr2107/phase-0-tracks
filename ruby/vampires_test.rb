
employee_counter = 0
puts "How many employees will be processed?"
employees = gets.to_i
until employee_counter == employees

#Question 1
puts "What is your name?"
name = gets.chomp
if name == "Drake Cula" || name == "Tu Fang"
  vampire_name = true
else
  normal_name = true
end

#Question 2
puts "How old are you?"
age = gets.to_i
puts "What year were you born?"
year = gets.to_i
if age == (2017 - year)
  age_year = true
else
  age_year_false = true
end

#Question 3
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic = gets.chomp
if garlic == "yes"
  employee_likes_garlic = true
else
  employee_dislikes_garlic = true
end

#Question 4
puts "Would you like to enroll in the company's health insurance?"
insurance = gets.chomp
if insurance == "yes"
  wants_insurance = true
else
  waives_insurance = true
end

#Question 5
puts "Please name any allergies you may have. Press enter after each allergy. Type 'Done' when finished."
allergies = gets.chomp
if allergies = "sunshine"
suspicious_allergy = true
else allergies = gets.chomp
  end

#Data
if age_year && (employee_likes_garlic || wants_insurance) && normal_name
  vampire_result = "Probably not a vampire."
elsif age_year_false && (employee_dislikes_garlic || waives_insurance)
  vampire_result = "Probably a vampire."
elsif age_year_false && employee_dislikes_garlic && waives_insurance
  vampire_result = "Almost certainly a vampire."
elsif age_year && employee_likes_garlic && wants_insurance && vampire_name
  vampire_result = "Definitely a vampire."
elsif suspicious_allergy
  vampire_result = "Probably a vampire."
else
  print "Results inconclusive."
end
print vampire_result
employee_counter +=1
end
puts "Actually, nevermind! What do these questions have to do with anything? Let's all be friends."