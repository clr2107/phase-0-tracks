#The calculate method performs specific calculation based on user input.
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
  puts answer
  return answer
end
# calculate(4, "+", 5)
# calculate(5, "-", 4)
# calculate(4, "*", 5)
# calculate(20, "/", 5)

#User interface: Ask for user input (a calculation to perform). Method will give the user the result of the calculation.
#Updated program to allow user to do as may calculations as they want. When the user types 'done' the program exits.

all = {}
  loop do
    puts "What calculation would you like to perform?"
    input = gets.chomp
    if input == "done"
      break
    end
  input_array = input.split(" ")
  all[input] = calculate(input_array[0].to_i, input_array[1], input_array[2].to_i)
  end

#When the user is finished entering calculations but before program exits, a count of the calculations performed and a history of all of the calculations is printed using data stored in a hash.
puts "#{all.length} operations have been performed:"
  all.each do |key, value|
    puts "#{key} = #{value}"
  end








