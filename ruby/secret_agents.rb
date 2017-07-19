#Encrypt (with edge case)
#For each letter in the string, go forward one letter in the alphabet (add one to the index).
def encrypt(string)
	new_string=""
	idx=0
while idx < string.length
	new_string << string[idx].next unless
	if string[idx] == "z"
		string[idx] = "a"
		new_string << string[idx]
end
	idx+=1
end
	new_string
end
#encrypt(string)
#encrypt("abc")
#encrypt("zed")

#Decrypt 
#For each letter in the string, go back in the alphabet one letter (subtract one to the index).
def decrypt(string)
  idx = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  while idx < string.length
  	string[idx] = alphabet[alphabet.index(string[idx]) - 1]
  	idx += 1
end
	string
end
#decrypt(string)
#decrypt("bcd")
#decrypt("afe")

#NESTED METHOD
#decrypt(encrypt("swordfish"))
#This nested method works because first the string is being encrypted, and then it is being decrypted.
#If something was decrypted before being encrypted, it would defeat the purpose of encryption and be meaningless.

#DRIVER CODE 
#Asks user if they would like to encrypt or decrypt a password, stores this as input.
#Include error message if input is outside scope of the question.
#Asks user for password (string) and runs encrypt/decrypt methods according to the user's selection.
	puts "Hello. Would you like to decrypt or encrypt a password? "
	input = gets.chomp
until input == "encrypt" || input == "decrypt"
	puts "Please try again."
	input = gets.chomp
end
	puts "Please enter your password."
	password = gets.chomp
if input == "encrypt"
	puts encrypt(password)
elsif input == "decrypt"
	puts decrypt(password)
end
