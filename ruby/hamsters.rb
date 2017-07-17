puts "What is the hamster's name?"
name = gets.chomp
puts "How squeaky is your hamster, on a scale from 1-10?"
volume = gets.chomp.to_i
puts "What fur color does he/she have?"
fur = gets.chomp
puts "Is your hamster a good candidate for adoption? (good or bad)"
adoption = gets.chomp
puts "How old is your hamster?"
age = gets.chomp.to_f
if age==0.0
 age = nil
end
puts "Your hamster's name is #{name} and on the squeakiness scale it is a #{volume}. It has #{fur} fur, it is a #{adoption} candidate for adoption, and is #{age} years old."
