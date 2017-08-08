#Alias manager takes a name and gives back a fake name. The fake name has a swapped first and last name and changes all vowels to the next vowel in 'aeiou' and all of the consonants to the next consonant.

#Next vowel method (to be invoked in alias_manager method.) Changes each vowel to next vowel in 'aeiou'.
def next_vowel(letter)
    vowels = ["a", "e", "i", "o", "u"]
    #edge case
    if letter == "u"
      return "a"
    end
    next_vowel_index = vowels.index(letter) + 1
    return vowels[next_vowel_index]
end

#Next consonant method (to be invoked in alias_manager method.) Changes each consonant to next consonant in alphabet.
def next_consonant(letter)
    consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
    #edge case
    if letter == "z"
      return "b"
    end
    next_consonant_index = consonants.index(letter) + 1
    return consonants[next_consonant_index]
end

#Swap order of first and last name (to be invoked in alias_manager method.)


#Main method: Convert name to alias. Using .each, check if each letter in name (user input) is a vowel or a consonant (using .include? method), invoke next_vowel or next_consonant depending on letter is a vowel or consonant, and save new letters in a variable "new_name". Account for spaces in name with " ". Invoke swap_name method at the end to swap order of first and last name and return the result.
def alias_manager(name)
vowels = ["a", "e", "i", "o", "u"]
consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
name = name.downcase.split("")
new_name = ""
  name.each do |letter|
    if vowels.include?(letter)
     new_vowel = next_vowel(letter)
     new_name << new_vowel
    elsif consonants.include?(letter)
     new_consonant = next_consonant(letter)
     new_name << new_consonant
    elsif letter == " "
     new_name << " "
    end
  end
  swap_name(new_name)
end

#DRIVER CODE
#Ask for user input, store all names (original and fake names) in a hash after running alias_manager method and print all names.
puts "Enter your name for an alias. After all names have been entered, type done."
all_names = {}
loop do
  name = gets.chomp
  break if name == "done"
  all_names[name] = alias_manager(name)
end
all_names.each do |key,value|
  puts "#{key} is actually #{value}."
end


