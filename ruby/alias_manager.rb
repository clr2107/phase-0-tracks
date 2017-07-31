#Create a fake name by:
#Swapping the first and last name.
#Changing all of the vowels(a,e,i,o,u) to the next vowel in 'aeiou' and all of the consonants to the next consonant in the alphabet.
#=>a=>e, u=>a, d=>f
def alias_manager(name)
  #Swap first and last name
  name = name.downcase
  array_name = name.split(" ")
  array_name[0], array_name[1] = array_name[1], array_name[0]
vowels = ["a", "e", "i", "o", "u"]
consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]

new_name = ""
name.each do |x|
  idx = 0
  if vowels.include?(x)
    x = vowels[x[idx+1]]
    new_name<< x
  else x = consonants[x[idx+1]]
    new_name<<x
  end
end
p new_name
end