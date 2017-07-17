
puts "What is the hamster's name?"
name = gets.chomp
puts "How squeaky is your hamster, on a scale from 1-10?"
volume = gets.chomp.to_i
puts "What fur color does he/she have?"
fur = gets.chomp
puts "Is your hamster a good candidate for adoption? (true or false)"
adoption = gets.chomp
puts "How old is your hamster?"
age = gets.chomp.to_f
if age.empty?
  age = nil
end
p age
