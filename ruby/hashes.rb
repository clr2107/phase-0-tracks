#Interior Designer New Client Survey
#Ask new client questions about interior design preferences; store values using gets.chomp.
puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "How many children do you have?"
children = gets.chomp.to_i
puts "What decor theme do you want?"
decor_theme = gets.chomp
puts "Have you hired an interior designer before? (true/false)"
interior_designer = !!gets.chomp

#Make a new hash containing all new client data.
new_client = {
:name => name,
:age => age,
:children => children,
:decor_theme => decor_theme,
:interior_designer => interior_designer
}

#Print hash.
print new_client

#Ask client for any updates/changes, and until client enters "none", save updated values as symbols and print new hash.
until gets.chomp == "none"
puts "Do you want to add/change anything? If no, type none."
if "decor_theme" == gets.chomp
  puts "Please enter your updated decor theme."
  new_client[:decor_theme] = gets.chomp
print new_client
end
if :name == gets.chomp
  puts "Please type your updated name."
  new_client[:name] = gets.chomp
print new_client
end
if :age == gets.chomp
  puts "Please enter your updated age."
  new_client[:age] = gets.chomp
print new_client
end
if :children == gets.chomp
  puts "Please enter your updated children."
  new_client[:children] = gets.chomp
print new_client
end
if :interior_designer == gets.chomp
  puts "please enter updated interior designer value."
  new_client[:interior_designer] = gets.chomp
  print new_client
end
exit
end





