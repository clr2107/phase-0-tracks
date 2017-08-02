def calculate(integer_one, operator_string, integer_two)
  integer_one.send(operator_string, integer_two)
end
#calculate(4, "+", 5)
#calculate(5, "-", 1)
#calculate(5, "*", 4)
#calculate(20, "/", 5)

def calculate_user_input(input)
  integer_one = input[0].to_i
  operator_string = input[1]
  integer_two = input[-1].to_i
  return calculate(integer_one, operator_string, integer_two)
end

#Ask for user input
def calculate_many_user_inputs
  answers = []
  all_input = []
  puts "What calculation would you like to perform?"
  input = gets.chomp
  counter = 0
  until input == "done"
    p all_input << input
    puts calculate_user_input(input)
    p answers << calculate_user_input(input)
    input = gets.chomp
    counter +=1
  end
  puts counter.to_s + " calculations performed:"
  idx = 0
  until idx == all_input.length
    puts all_input[idx].to_s + "=" + answers[idx].to_s
    idx +=1
  end
end
calculate_many_user_inputs




