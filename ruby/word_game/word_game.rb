class wordGame

attr_reader :game_over, :counter

def initialize
  @game_over = false
  @counter = 0
end

#Method to get user input (letter), check if letter is correct/incorrect, and print the current word.
def guess(word, letter_guess)
  word_array = word.split("")
  user_guess = []
  word.length.times do |x|
    user_guess << " _ "
  end
  word_array.each do |letter_word|
    if letter_word == letter_guess
      correct_letter = true
      index = word.index(letter_guess)
      user_guess[index] = letter_guess
      puts "You guessed a correct letter!"
      puts "Your current guess is " + user_guess.join("")
      counter += 1
    end
  end
    if !word.include?(letter_guess)
      correct_letter = false
      puts "You guessed an incorrect letter! Try again!"
      puts "Your current guess is " + user_guess.join("")
      counter +=1
    end
  end
end

# DRIVER CODE
puts "Welcome to the Word Game!"
game = wordGame.new

puts "User 1 enters a word."
word = gets.chomp

while game_over
puts "What letter would you like to guess?"
letter_guess = gets.chomp.to_s
game.guess(word, letter_guess)
end


# if counter == (word.length*2)
#   game_over = true
#   puts "You are out of guesses. Game over!"
# end
# correct_letter = true
# if correct_answer
#   puts "You guessed the word! YOU WON!!!"
# end







# #Word Game.
# word = "cat"
# #User guess is empty array.
# user_guess = []
# word.length.times do |x|
#   user_guess << "_"
# end
# #
# game_over = false
# counter = 0
# #Make word an array.
# word_array = word.split("")
# until word == user_guess
#   puts "What letter would you like to guess?"
#   letter_guess = gets.chomp
#   #idx = 0
#         #word_array.each do |letter_word|
#         # if letter_word == letter_guess
#         #   letter_index = word.index(letter_word)
#         #   user_guess[letter_index] = letter_word
#         #each with index
#           word_array.each_with_index do |letter_word, index|
#           if letter_word == letter_guess
#           correct_letter = true
#           index = word.index(letter_guess)
#           user_guess[index] = letter_guess
#           puts "You guessed a correct letter!"
#           puts "Your current guess is " + user_guess
#         else
#           correct_letter = false
#           puts "You guessed an incorrect letter! Try again!"
#           puts "Your current guess is " + user_guess.join("")
#         end
#   idx +=1
# end

# counter +=1

# if counter == (word.length*2)
#   game_over = true
#   puts "You are out of guesses. Game over!"
# end
# correct_letter = true
# if correct_answer
#   puts "You guessed the word! YOU WON!!!"
# end

# end


# class Wordgame
# end

# #initialize new instance of game
# def initialize
# word = "" #word is empty string
# @guess_count = 0
# @is_over = false
# end

# def user_guess(letter, user_word)
#   @guess_count += 1
#   if word.include?(letter)
#     word #update word with correct letter
#   end
#   if @guess_count == word.length
#     @is_over = true
#     puts "You are out of guesses."
#   end
#   if word == user_word
#     @is_over == true
#     puts "You won!"
# end
# end
# puts "Guess a letter."
# letter = gets.chomp
# #User interface

# # puts "Welcome to the word game! Try to guess my word."
# # game = Wordgame.new

# # while !game.is_over
# # puts "Guess a letter."
# # letter = gets.chomp
# # end

# #Word Game.
# class Wordgame
# end
# #Initialize new instance of game.
# def initialize
#   word = "" #word is empty string
#   @guess_count = 0
#   @is_over = false
# end

# def user_guess(letter, user_word)
#   @guess_count += 1
#   if word.include?(letter)
#     word #update word with correct letter
#   end
#   if @guess_count == word.length
#     @is_over = true
#     puts "You are out of guesses."
#   end
#   if word == user_word
#     @is_over == true
#     puts "You won!"
# end

# #User interface

# puts "Welcome to the word game! Try to guess my word."
# game = Wordgame.new

# while !game.is_over
# puts "Guess a letter."
# letter = gets.chomp


# ##
# word = "cat"
# user_word = []
# index = 0
# word = word.split("")
# until word == user_word
#   length = word.length
#   puts "What letter would you like to guess?"
#   letter_guess = gets.chomp
#   user_word = "_"
#     # if word.include?(letter) #letter is "a"
#     #   correct_guess = true
#     #   letter_index = word.index(letter)
#     #   user_word[letter_index] = letter

#       # user_word[index] = "_"

#       word.each do |x|
#         if x == letter_guess
#           letter_index = word.index(letter_guess)
#           user_word[letter_index] = letter_guess
#           puts "Your guess is " + user_word
#         else


#     end

#     end
#   # correct_guess = false
#   # puts "Try again loser."
#   # end
# end


