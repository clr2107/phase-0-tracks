#game class
class Wordgame
end

#initialize new instance of game
def initialize
  word = "" #word is empty string
  @guess_count = 0
  @is_over = false
end

def user_guess(letter, user_word)
  @guess_count += 1
  if word.include?(letter)
    word #update word with correct letter
  end
  if @guess_count == word.length
    @is_over = true
    puts "You are out of guesses."
  end
  if word == user_word
    @is_over == true
    puts "You won!"
end

#User interface

puts "Welcome to the word game! Try to guess my word."
game = Wordgame.new

while !game.is_over
puts "Guess a letter."
letter = gets.chomp


##
word = "cat"
user_word = []
index = 0
word = word.split("")
until word == user_word
  length = word.length
  puts "What letter would you like to guess?"
  letter_guess = gets.chomp
  user_word = "_"
    # if word.include?(letter) #letter is "a"
    #   correct_guess = true
    #   letter_index = word.index(letter)
    #   user_word[letter_index] = letter

      # user_word[index] = "_"

      word.each do |x|
        if x == letter_guess
          letter_index = word.index(letter_guess)
          user_word[letter_index] = letter_guess
          puts "Your guess is " + user_word
        else


    end

    end
  # correct_guess = false
  # puts "Try again loser."
  # end
end

