

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


#swap order of first and last names and print name
def swap_name(new_name)
p new_name =  new_name.split(" ")
p new_name[0], new_name[1] = new_name[1], new_name[0]
p new_name[0].capitalize + " " + new_name[1].capitalize
end

#convert to next vowel/consonant function
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
  final_name = swap_name(new_name)
end


# #user input
# puts "What is your name? Type done when finished."
# name = gets.chomp
# until name == "done"
# alias_manager(name)
# name = gets.chomp
# end

