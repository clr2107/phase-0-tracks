#vowel function
def next_vowel(letter)
    vowels = ["a", "e", "i", "o", "u"]
    #edge case
    if letter == "u"
      return "a"
    end
    next_vowel_index = vowels.index(letter) + 1
    return vowels[next_vowel_index]
end

#consonant function
def next_consonant(letter)
    consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
    if letter == "z"
      return "b"
    end
    next_consonant_index = consonants.index(letter) + 1
    return consonants[next_consonant_index]
end

#convert name to next vowel/consonant function
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
  swap_name(new_name, name)
end

#swap order of first and last names; save and print all aliases.
def swap_name(new_name, name)
  name = name.join("").capitalize
all_names = []
new_name =  new_name.split(" ")
new_name[0], new_name[1] = new_name[1], new_name[0]
puts final_name = new_name[0].capitalize + " " + new_name[1].capitalize
all_names << final_name
all_names.each do |x|
  puts "#{name} is actually #{final_name}."
end
end

#ask for user input
puts "Enter your name for an alias. After all names have been entered, type done."
name = gets.chomp
until name == "done"
alias_manager(name)
name = gets.chomp
end

