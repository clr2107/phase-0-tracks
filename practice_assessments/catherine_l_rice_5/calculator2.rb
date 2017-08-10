#Calculate method performs calculation based on user input.
def calculate(integer_one, operator_string, integer_two)
  if operator_string == "+"
    answer = integer_one + integer_two
  elsif operator_string == "-"
    answer = integer_one - integer_two
  elsif operator_string == "*"
    answer = integer_one * integer_two
  elsif operator_string == "/"
    answer = integer_one / integer_two
  end
  return answer
end
# calculate(4, "+", 5)
# calculate(5, "-", 4)
# calculate(4, "*", 5)
# calculate(20, "/", 5)

#User interface: Ask for user input (a calculation to perform). Use your method to give the user a result. If the user type "4 + 5" the program should print a result of 9 and then exit.
#Update program to allow user to do as may calculations as they want. When the user types 'done' the program can exit.
#When the user has finished performing calculations but just before the program exits, print a count of the calculations performed and a history of all of the calculations. (Using a hash).
puts "What calculation would you like to perform?"
input = gets.chomp
until input == "done"
  input = input.split(" ")
  integer_one = input[0].to_i
  operator_string = input[1]
  integer_two = input[2].to_i
  puts calculate(integer_one, operator_string, integer_two)
  input = gets.chomp
end

  all = {}
  loop do
  input = gets.chomp
  break if input == "done"
  all[input] = calculate(integer_one, operator_string, integer_two)
end
  puts "#{all.length + 1} operations have been performed:"
  all.each do |key, value|
    puts "#{key} = #{value}"
  end








