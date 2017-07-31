#Employee Counter
def vampire_filter()
employee_counter = 0
    puts "How many employees will be processed? (Please pick number higher than 0.)"
    employees = gets.to_i

  while employee_counter < employees
    vampire_survey
    employee_counter +=1
  end
end

#Survey
def vampire_survey()
  #Question 1
    puts "What is your name?"
    name = gets.chomp

  if name == "Drake Cula" || name == "Tu Fang"
    has_vampire_name = true
  else
    has_vampire_name = false
  end

  #Question 2
    puts "How old are you?"
    age = gets.to_i
    puts "What year were you born?"
    year = gets.to_i

  if age == (2017 - year)
    age_is_correct = true
  else
    age_is_correct = false
  end

  #Question 3
  puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
  if gets.chomp == "yes"
    employee_likes_garlic = true
  else
    employee_likes_garlic = false
  end

  #Question 4
  puts "Would you like to enroll in the company's health insurance? (yes/no)"
  if gets.chomp == "yes"
    wants_insurance = true
  else
    wants_insurance = false
  end

  #Question 5
  puts "Please name any allergies you may have. Press enter after each allergy. Type 'Done' when finished."
  allergies = gets.chomp

  if allergies == "sunshine"
    sunshine_allergy = true
  else
    sunshine_allergy = false

      until allergies == "Done"
      allergies = gets.chomp
    end

  end

#Detection Logic
  #Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
if has_vampire_name
  vampire_result = "Definitely a vampire."

  #If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
elsif !age_is_correct && !employee_likes_garlic && !wants_insurance
 vampire_result = "Almost certainly a vampire."

  #If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
elsif !age_is_correct && (!employee_likes_garlic || !wants_insurance) || sunshine_allergy
  vampire_result = "Probably a vampire."

  #If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
elsif age_is_correct && (employee_likes_garlic || wants_insurance)
  vampire_result = "Probably not a vampire."

  #Otherwise, print results inconclusive.
else vampire_result = "Results inconclusive."
end

#Print Results
puts "Name: #{name}, Age: #{age}, Born: #{year}, Likes Garlic: #{employee_likes_garlic}, Wants Insurance: #{wants_insurance}, Suspicious Allergies: #{sunshine_allergy}, Vampire Status: #{vampire_result}"
end
vampire_filter()
puts "Actually, nevermind! What do these questions have to do with anything? Let's all be friends."

